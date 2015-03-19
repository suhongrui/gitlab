# -*- encoding: utf-8 -*-
# stub: gitlab_emoji 0.0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "gitlab_emoji"
  s.version = "0.0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Marin Jankovski"]
  s.date = "2014-03-20"
  s.description = "GitLab emoji assets"
  s.email = ["marin@gitlab.com"]
  s.homepage = "https://gitlab.com/gitlab-org/gitlab_emoji"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Ruby gem for emojis in GitLab"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<emoji>, ["~> 1.0.1"])
    else
      s.add_dependency(%q<emoji>, ["~> 1.0.1"])
    end
  else
    s.add_dependency(%q<emoji>, ["~> 1.0.1"])
  end
end
