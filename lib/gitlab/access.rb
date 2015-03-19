#coding:utf-8
# Gitlab::Access module
#
# Define allowed roles that can be used
# in GitLab code to determine authorization level
#
module Gitlab
  module Access
    GUEST     = 10
    REPORTER  = 20
    DEVELOPER = 30
    MASTER    = 40
    OWNER     = 50

    # Branch protection settings
    PROTECTION_NONE         = 0
    PROTECTION_DEV_CAN_PUSH = 1
    PROTECTION_FULL         = 2

    class << self
      def values
        options.values
      end

      def all_values
        options_with_owner.values
      end

      def options
        {
          "访客"     => GUEST,
          "记者"  => REPORTER,
          "开发者" => DEVELOPER,
          "主人"    => MASTER,
        }
      end

      def options_with_owner
        options.merge(
          "所有者" => OWNER
        )
      end

      def sym_options
        {
          guest:     GUEST,
          reporter:  REPORTER,
          developer: DEVELOPER,
          master:    MASTER,
        }
      end

      def protection_options
        {
          "不受保护，开发和主人能（强制）推送和删除分支" => PROTECTION_NONE,
          "部分保护，开发人员还可以推送，但防止所有的强制推送和删除" => PROTECTION_DEV_CAN_PUSH,
          "完全保护，只有主人可以推送和防止所有的强制推送和删除" => PROTECTION_FULL,
        }
      end

      def protection_values
        protection_options.values
      end
    end

    def human_access
      Gitlab::Access.options_with_owner.key(access_field)
    end

    def owner?
      access_field == OWNER
    end
  end
end
