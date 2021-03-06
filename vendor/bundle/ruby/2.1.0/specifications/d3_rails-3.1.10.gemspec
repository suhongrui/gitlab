# -*- encoding: utf-8 -*-
# stub: d3_rails 3.1.10 ruby lib vendor

Gem::Specification.new do |s|
  s.name = "d3_rails"
  s.version = "3.1.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib", "vendor"]
  s.authors = ["Michael Bostock", "Han Kang", "Cynthia Kiser", "Byron Anderson", "Johnathan Pulos"]
  s.date = "2013-05-29"
  s.description = "Gem installation of javascript framework for data visualization, D3"
  s.email = ["han@logicallsat.com"]
  s.homepage = ""
  s.rubyforge_project = "d3_rails"
  s.rubygems_version = "2.2.2"
  s.summary = "D3 automated install for Rails 3.1+"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.1.0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<rails>, ["~> 3.1"])
    else
      s.add_dependency(%q<railties>, [">= 3.1.0"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<rails>, ["~> 3.1"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.1.0"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<rails>, ["~> 3.1"])
  end
end
