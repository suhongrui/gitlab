#coding:utf-8
require_relative "base_service"

module Files
  class DeleteService < BaseService
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

      delete_file_action = Gitlab::Satellite::DeleteFileAction.new(current_user, project, ref, path)

      deleted_successfully = delete_file_action.commit!(
        nil,
        params[:commit_message]
      )

      if deleted_successfully
        success
      else
        error("您的更改不能提交，因为该文件已被更改")
      end
    end
  end
end
