# -*- encoding: utf-8 -*-
# stub: asana 0.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = "asana"
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Bright"]
  s.date = "2013-07-18"
  s.description = "Ruby wrapper for the Asana REST API"
  s.email = ["ryan@rbright.net"]
  s.homepage = "http://github.com/rbright/asana"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Ruby wrapper for the Asana REST API"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activeresource>, [">= 3.2.3"])
      s.add_development_dependency(%q<guard-minitest>, ["~> 1.0.0"])
      s.add_development_dependency(%q<minitest>, ["~> 2.12.1"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_development_dependency(%q<vcr>, ["~> 2.1.0"])
      s.add_development_dependency(%q<webmock>, ["~> 1.8.6"])
    else
      s.add_dependency(%q<activeresource>, [">= 3.2.3"])
      s.add_dependency(%q<guard-minitest>, ["~> 1.0.0"])
      s.add_dependency(%q<minitest>, ["~> 2.12.1"])
      s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_dependency(%q<vcr>, ["~> 2.1.0"])
      s.add_dependency(%q<webmock>, ["~> 1.8.6"])
    end
  else
    s.add_dependency(%q<activeresource>, [">= 3.2.3"])
    s.add_dependency(%q<guard-minitest>, ["~> 1.0.0"])
    s.add_dependency(%q<minitest>, ["~> 2.12.1"])
    s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
    s.add_dependency(%q<vcr>, ["~> 2.1.0"])
    s.add_dependency(%q<webmock>, ["~> 1.8.6"])
  end
end
