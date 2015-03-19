#coding:utf-8
module VisibilityLevelHelper
  def visibility_level_color(level)
    case level
    when Gitlab::VisibilityLevel::PRIVATE
      'vs-private'
    when Gitlab::VisibilityLevel::INTERNAL
      'vs-internal'
    when Gitlab::VisibilityLevel::PUBLIC
      'vs-public'
    end
  end

  def visibility_level_description(level)
    capture_haml do
      haml_tag :span do
        case level
        when Gitlab::VisibilityLevel::PRIVATE
          haml_concat "项目访问为每个用户必须明确授予。"
        when Gitlab::VisibilityLevel::INTERNAL
          haml_concat "该项目可以通过克隆"
          haml_concat "所有登录的用户。"
        when Gitlab::VisibilityLevel::PUBLIC
          haml_concat "该项目可以被克隆"
          haml_concat "没有任何"
          haml_concat "身份验证。"
        end
      end
    end
  end

  def snippet_visibility_level_description(level)
    capture_haml do
      haml_tag :span do
        case level
        when Gitlab::VisibilityLevel::PRIVATE
          haml_concat "该代码段仅是对我来说可见"
        when Gitlab::VisibilityLevel::INTERNAL
          haml_concat "该代码段为任何登录的用户可见。"
        when Gitlab::VisibilityLevel::PUBLIC
          haml_concat "该代码段可被访问"
          haml_concat "没有任何"
          haml_concat "身份验证。"
        end
      end
    end
  end

  def visibility_level_icon(level)
    case level
    when Gitlab::VisibilityLevel::PRIVATE
      private_icon
    when Gitlab::VisibilityLevel::INTERNAL
      internal_icon
    when Gitlab::VisibilityLevel::PUBLIC
      public_icon
    end
  end

  def visibility_level_label(level)
    Project.visibility_levels.key(level)
  end

  def restricted_visibility_levels
    current_user.is_admin? ? [] : gitlab_config.restricted_visibility_levels
  end
end
