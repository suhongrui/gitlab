# -*- encoding: utf-8 -*-
# stub: gitlab-grack 2.0.0.pre ruby lib

Gem::Specification.new do |s|
  s.name = "gitlab-grack"
  s.version = "2.0.0.pre"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Scott Chacon"]
  s.date = "2013-12-06"
  s.description = "Ruby/Rack Git Smart-HTTP Server Handler"
  s.email = ["schacon@gmail.com"]
  s.homepage = "https://github.com/gitlabhq/grack"
  s.rubygems_version = "2.2.2"
  s.summary = "Ruby/Rack Git Smart-HTTP Server Handler"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, ["~> 1.5.1"])
      s.add_development_dependency(%q<mocha>, ["~> 0.11"])
    else
      s.add_dependency(%q<rack>, ["~> 1.5.1"])
      s.add_dependency(%q<mocha>, ["~> 0.11"])
    end
  else
    s.add_dependency(%q<rack>, ["~> 1.5.1"])
    s.add_dependency(%q<mocha>, ["~> 0.11"])
  end
end
