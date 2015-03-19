# -*- encoding: utf-8 -*-
# stub: sanitize 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sanitize"
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2.0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Grove"]
  s.date = "2014-01-13"
  s.email = "ryan@wonko.com"
  s.homepage = "https://github.com/rgrove/sanitize/"
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.2.2"
  s.summary = "Whitelist-based HTML sanitizer."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.4.4"])
      s.add_development_dependency(%q<minitest>, ["~> 4.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
      s.add_development_dependency(%q<redcarpet>, ["~> 3.0.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.8.7"])
    else
      s.add_dependency(%q<nokogiri>, [">= 1.4.4"])
      s.add_dependency(%q<minitest>, ["~> 4.7"])
      s.add_dependency(%q<rake>, ["~> 10.1"])
      s.add_dependency(%q<redcarpet>, ["~> 3.0.0"])
      s.add_dependency(%q<yard>, ["~> 0.8.7"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 1.4.4"])
    s.add_dependency(%q<minitest>, ["~> 4.7"])
    s.add_dependency(%q<rake>, ["~> 10.1"])
    s.add_dependency(%q<redcarpet>, ["~> 3.0.0"])
    s.add_dependency(%q<yard>, ["~> 0.8.7"])
  end
end
