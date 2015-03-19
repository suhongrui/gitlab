#coding:utf-8
module SearchHelper
  def search_autocomplete_opts(term)
    return unless current_user

    resources_results = [
      groups_autocomplete(term),
      projects_autocomplete(term)
    ].flatten

    generic_results = project_autocomplete + default_autocomplete + help_autocomplete
    generic_results.select! { |result| result[:label] =~ Regexp.new(term, "i") }

    [
      resources_results,
      generic_results
    ].flatten.uniq do |item|
      item[:label]
    end
  end

  private

  # Autocomplete results for various settings pages
  def default_autocomplete
    [
      { label: "我的配置文件", url: profile_path },
      { label: "我的SSH密钥",         url: profile_keys_path },
      { label: "我的控制面板",        url: root_path },
      { label: "管理员部分",       url: admin_root_path },
    ]
  end

  # Autocomplete results for internal help pages
  def help_autocomplete
    [
      { label: "help: API的帮助",           url: help_page_path("api", "README") },
      { label: "help: Markdown的帮助",      url: help_page_path("markdown", "markdown") },
      { label: "help: 权限的帮助",   url: help_page_path("permissions", "permissions") },
      { label: "help: 公共访问的帮助", url: help_page_path("public_access", "public_access") },
      { label: "help: Rake任务帮助",    url: help_page_path("raketasks", "README") },
      { label: "help: SSH密钥的帮助",      url: help_page_path("ssh", "README") },
      { label: "help: 系统钩子帮助",  url: help_page_path("system_hooks", "system_hooks") },
      { label: "help: Web 钩子帮助",     url: help_page_path("web_hooks", "web_hooks") },
      { label: "help: 工作流帮助",      url: help_page_path("workflow", "README") },
    ]
  end

  # Autocomplete results for the current project, if it's defined
  def project_autocomplete
    if @project && @project.repository.exists? && @project.repository.root_ref
      prefix = search_result_sanitize(@project.name_with_namespace)
      ref    = @ref || @project.repository.root_ref

      [
        { label: "#{prefix} - 文件",          url: project_tree_path(@project, ref) },
        { label: "#{prefix} - 提交",        url: project_commits_path(@project, ref) },
        { label: "#{prefix} - 网络",        url: project_network_path(@project, ref) },
        { label: "#{prefix} - 图表",          url: project_graph_path(@project, ref) },
        { label: "#{prefix} - 问题",         url: project_issues_path(@project) },
        { label: "#{prefix} - 合并请求", url: project_merge_requests_path(@project) },
        { label: "#{prefix} - 里程碑",     url: project_milestones_path(@project) },
        { label: "#{prefix} - 代码段",       url: project_snippets_path(@project) },
        { label: "#{prefix} - 团队",           url: project_team_index_path(@project) },
        { label: "#{prefix} - 维基",           url: project_wikis_path(@project) },
      ]
    else
      []
    end
  end

  # Autocomplete results for the current user's groups
  def groups_autocomplete(term, limit = 5)
    current_user.authorized_groups.search(term).limit(limit).map do |group|
      {
        label: "group: #{search_result_sanitize(group.name)}",
        url: group_path(group)
      }
    end
  end

  # Autocomplete results for the current user's projects
  def projects_autocomplete(term, limit = 5)
    ProjectsFinder.new.execute(current_user).search_by_title(term).
      sorted_by_stars.non_archived.limit(limit).map do |p|
      {
        label: "project: #{search_result_sanitize(p.name_with_namespace)}",
        url: project_path(p)
      }
    end
  end

  def search_result_sanitize(str)
    Sanitize.clean(str)
  end

  def search_filter_path(options={})
    exist_opts = {
      search: params[:search],
      project_id: params[:project_id],
      group_id: params[:group_id],
      scope: params[:scope]
    }

    options = exist_opts.merge(options)
    search_path(options)
  end

  # Sanitize html generated after parsing markdown from issue description or comment
  def search_md_sanitize(html)
    sanitize(html, tags: %w(a p ol ul li pre code))
  end
end
