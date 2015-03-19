# -*- encoding: utf-8 -*-
# stub: wikicloth 0.8.1 ruby lib

Gem::Specification.new do |s|
  s.name = "wikicloth"
  s.version = "0.8.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Ricciardi"]
  s.date = "2014-01-07"
  s.description = "mediawiki parser"
  s.email = "nricciar@gmail.com"
  s.extra_rdoc_files = ["README", "MIT-LICENSE"]
  s.files = ["MIT-LICENSE", "README"]
  s.homepage = "http://github.com/nricciar/wikicloth"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "An implementation of the mediawiki markup in ruby"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 0"])
      s.add_runtime_dependency(%q<expression_parser>, [">= 0"])
      s.add_runtime_dependency(%q<rinku>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
      s.add_development_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<i18n>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<builder>, [">= 0"])
      s.add_dependency(%q<expression_parser>, [">= 0"])
      s.add_dependency(%q<rinku>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<builder>, [">= 0"])
    s.add_dependency(%q<expression_parser>, [">= 0"])
    s.add_dependency(%q<rinku>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end
