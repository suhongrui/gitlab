# -*- encoding: utf-8 -*-
# stub: gitlab_git 7.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "gitlab_git"
  s.version = "7.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dmitriy Zaporozhets"]
  s.date = "2015-03-05"
  s.description = "GitLab wrapper around git objects"
  s.email = "dmitriy.zaporozhets@gmail.com"
  s.homepage = "http://rubygems.org/gems/gitlab_git"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Gitlab::Git library"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<gitlab-linguist>, ["~> 3.0"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 4.0"])
      s.add_runtime_dependency(%q<rugged>, ["~> 0.21.2"])
      s.add_runtime_dependency(%q<charlock_holmes>, ["~> 0.6"])
    else
      s.add_dependency(%q<gitlab-linguist>, ["~> 3.0"])
      s.add_dependency(%q<activesupport>, ["~> 4.0"])
      s.add_dependency(%q<rugged>, ["~> 0.21.2"])
      s.add_dependency(%q<charlock_holmes>, ["~> 0.6"])
    end
  else
    s.add_dependency(%q<gitlab-linguist>, ["~> 3.0"])
    s.add_dependency(%q<activesupport>, ["~> 4.0"])
    s.add_dependency(%q<rugged>, ["~> 0.21.2"])
    s.add_dependency(%q<charlock_holmes>, ["~> 0.6"])
  end
end
