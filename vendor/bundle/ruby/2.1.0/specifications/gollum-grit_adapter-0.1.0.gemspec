# -*- encoding: utf-8 -*-
# stub: gollum-grit_adapter 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gollum-grit_adapter"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Bart Kamphorst, Dawa Ometto"]
  s.date = "2014-11-25"
  s.description = "Adapter for Gollum to use Grit at the backend."
  s.email = ["repotag-dev@googlegroups.com"]
  s.homepage = "https://github.com/gollum/grit_adapter"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Adapter for Gollum to use Grit at the backend."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<gitlab-grit>, ["~> 2.7.1"])
      s.add_development_dependency(%q<rspec>, ["= 2.13.0"])
    else
      s.add_dependency(%q<gitlab-grit>, ["~> 2.7.1"])
      s.add_dependency(%q<rspec>, ["= 2.13.0"])
    end
  else
    s.add_dependency(%q<gitlab-grit>, ["~> 2.7.1"])
    s.add_dependency(%q<rspec>, ["= 2.13.0"])
  end
end
