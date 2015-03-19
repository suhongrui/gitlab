#coding:utf-8
require_relative "base_service"

module Files
  class CreateService < BaseService
    def execute
      allowed = Gitlab::GitAccess.can_push_to_branch?(current_user, project, ref)

      unless allowed
        return error("你是不允许在这个分支创建文件")
      end

      file_name = File.basename(path)
      file_path = path

      unless file_name =~ Gitlab::Regex.path_regex
        return error(
          '您所做的更改不能被提交，因为文件名 ' +
          Gitlab::Regex.path_regex_message
        )
      end

      if project.empty_repo?
        # everything is ok because repo does not have a commits yet
      else
        unless repository.branch_names.include?(ref)
          return error("你只能创建文件，如果你是在一个分支顶部")
        end

        blob = repository.blob_at_branch(ref, file_path)

        if blob
          return error("您的更改无法提交，因为文件名等存在")
        end
      end


      new_file_action = Gitlab::Satellite::NewFileAction.new(current_user, project, ref, file_path)
      created_successfully = new_file_action.commit!(
        params[:content],
        params[:commit_message],
        params[:encoding]
      )

      if created_successfully
        success
      else
        error("您的更改不能提交，因为该文件已被更改")
      end
    end
  end
end
