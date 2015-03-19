# -*- encoding: utf-8 -*-
# stub: omniauth-gitlab 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-gitlab"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["ssein"]
  s.date = "2015-01-24"
  s.description = "This is the strategy for authenticating to your GitLab service"
  s.email = ["ssein@undev.ru"]
  s.homepage = ""
  s.rubygems_version = "2.2.2"
  s.summary = "This is the strategy for authenticating to your GitLab service"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omniauth>, ["~> 1.0"])
      s.add_runtime_dependency(%q<omniauth-oauth2>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.1"])
      s.add_development_dependency(%q<rspec-its>, ["~> 1.0"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
    else
      s.add_dependency(%q<omniauth>, ["~> 1.0"])
      s.add_dependency(%q<omniauth-oauth2>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["~> 3.1"])
      s.add_dependency(%q<rspec-its>, ["~> 1.0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
    end
  else
    s.add_dependency(%q<omniauth>, ["~> 1.0"])
    s.add_dependency(%q<omniauth-oauth2>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["~> 3.1"])
    s.add_dependency(%q<rspec-its>, ["~> 1.0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
  end
end
