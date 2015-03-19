# -*- encoding: utf-8 -*-
# stub: gemnasium-gitlab-service 0.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "gemnasium-gitlab-service"
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tech-Angels"]
  s.date = "2014-12-02"
  s.description = "Add Gemnasium support to Gitlab as a Project Service.\n    It uploads the dependency files to https://api.gemnasium.com\n    whenever a new commit is pushed to your repository."
  s.email = ["contact@tech-angels.com"]
  s.homepage = "https://github.com/gemnasium/gemnasium-gitlab-service"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Gemnasium service for Gitlab"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rugged>, ["~> 0.19"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14"])
      s.add_development_dependency(%q<webmock>, ["~> 1.17"])
    else
      s.add_dependency(%q<rugged>, ["~> 0.19"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 2.14"])
      s.add_dependency(%q<webmock>, ["~> 1.17"])
    end
  else
    s.add_dependency(%q<rugged>, ["~> 0.19"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 2.14"])
    s.add_dependency(%q<webmock>, ["~> 1.17"])
  end
end
