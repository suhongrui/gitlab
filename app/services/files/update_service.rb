#coding:utf-8
require_relative "base_service"

module Files
  class UpdateService < BaseService
    def execute
      allowed = ::Gitlab::GitAccess.can_push_to_branch?(current_user, project, ref)

      unless allowed
        return error("你不能推到这个分支")
      end

      unless repository.branch_names.include?(ref)
        return error("你只能创建文件，如果你是在一个分支顶部")
      end

      blob = repository.blob_at_branch(ref, path)

      unless blob
        return error("您只能编辑文本文件")
      end

      edit_file_action = Gitlab::Satellite::EditFileAction.new(current_user, project, ref, path)
      created_successfully = edit_file_action.commit!(
        params[:content],
        params[:commit_message],
        params[:encoding]
      )

      if created_successfully
        success
      else
        error("您的更改无法提交。也许该文件是由另一个进程改变或没有什么提交？")
      end
    end
  end
end
