# -*- encoding: utf-8 -*-
# stub: cal-heatmap-rails 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "cal-heatmap-rails"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Pavol Zbell"]
  s.date = "2014-04-21"
  s.description = "Packages Cal-HeatMap for Rails Asser Pipeline"
  s.email = ["pavol.zbell@gmail.com"]
  s.homepage = "https://github.com/pavolzbell/cal-heatmap-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Packages Cal-HeatMap for Rails Asser Pipeline"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
