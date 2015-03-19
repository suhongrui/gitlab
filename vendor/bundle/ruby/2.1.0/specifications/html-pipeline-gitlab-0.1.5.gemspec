# -*- encoding: utf-8 -*-
# stub: html-pipeline-gitlab 0.1.5 ruby lib

Gem::Specification.new do |s|
  s.name = "html-pipeline-gitlab"
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Robert Schilling", "Marin Jankovski"]
  s.date = "2014-10-10"
  s.description = "Extension filters for html-pipeline used by GitLab"
  s.email = ["schilling.ro@gmail.com"]
  s.homepage = "https://gitlab.com/gitlab-org/html-pipeline-gitlab"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Extension filters for html-pipeline used by GitLab"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<pry>, ["~> 0.9"])
      s.add_runtime_dependency(%q<html-pipeline>, ["~> 1.11.0"])
      s.add_runtime_dependency(%q<gitlab_emoji>, ["~> 0.0.1"])
      s.add_runtime_dependency(%q<sanitize>, ["~> 2.1"])
      s.add_runtime_dependency(%q<actionpack>, ["~> 4"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<pry>, ["~> 0.9"])
      s.add_dependency(%q<html-pipeline>, ["~> 1.11.0"])
      s.add_dependency(%q<gitlab_emoji>, ["~> 0.0.1"])
      s.add_dependency(%q<sanitize>, ["~> 2.1"])
      s.add_dependency(%q<actionpack>, ["~> 4"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<pry>, ["~> 0.9"])
    s.add_dependency(%q<html-pipeline>, ["~> 1.11.0"])
    s.add_dependency(%q<gitlab_emoji>, ["~> 0.0.1"])
    s.add_dependency(%q<sanitize>, ["~> 2.1"])
    s.add_dependency(%q<actionpack>, ["~> 4"])
  end
end
