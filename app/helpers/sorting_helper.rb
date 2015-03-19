#coding:utf-8
module SortingHelper
  def sort_options_hash
    {
      sort_value_name => sort_title_name,
      sort_value_recently_updated => sort_title_recently_updated,
      sort_value_oldest_updated => sort_title_oldest_updated,
      sort_value_recently_created => sort_title_recently_created,
      sort_value_oldest_created => sort_title_oldest_created,
      sort_value_milestone_soon => sort_title_milestone_soon,
      sort_value_milestone_later => sort_title_milestone_later,
      sort_value_largest_repo => sort_title_largest_repo,
      sort_value_recently_signin => sort_title_recently_signin,
      sort_value_oldest_signin => sort_title_oldest_signin,
    }
  end

  def sort_title_oldest_updated
    '最早更新的'
  end

  def sort_title_recently_updated
    '最近更新的'
  end

  def sort_title_oldest_created
    '最早创建的'
  end

  def sort_title_recently_created
    '最近创建的'
  end

  def sort_title_milestone_soon
    '里程碑即将到期'
  end

  def sort_title_milestone_later
    '里程碑到期以后'
  end

  def sort_title_name
    '名称'
  end

  def sort_title_largest_repo
    '最大存储库'
  end

  def sort_title_recently_signin
    '最近的登录'
  end

  def sort_title_oldest_signin
    '最早的登录'
  end

  def sort_value_oldest_updated
    'updated_asc'
  end

  def sort_value_recently_updated
    'updated_desc'
  end

  def sort_value_oldest_created
    'created_asc'
  end

  def sort_value_recently_created
    'created_desc'
  end

  def sort_value_milestone_soon
    'milestone_due_asc'
  end

  def sort_value_milestone_later
    'milestone_due_desc'
  end

  def sort_value_name
    'name_asc'
  end

  def sort_value_largest_repo
    'repository_size_desc'
  end

  def sort_value_recently_signin
    'recent_sign_in'
  end

  def sort_value_oldest_signin
    'oldest_sign_in'
  end
end
