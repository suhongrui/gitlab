# -*- encoding: utf-8 -*-
# stub: stamp 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "stamp"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jeremy Weiskotten"]
  s.date = "2012-12-17"
  s.description = "Format dates and times based on human-friendly examples, not arcane strftime directives."
  s.email = ["jeremy@weiskotten.com"]
  s.homepage = "https://github.com/jeremyw/stamp"
  s.rubygems_version = "2.2.2"
  s.summary = "Date and time formatting for humans."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
