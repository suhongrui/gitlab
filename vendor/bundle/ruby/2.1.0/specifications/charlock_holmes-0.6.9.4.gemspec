# -*- encoding: utf-8 -*-
# stub: charlock_holmes 0.6.9.4 ruby lib
# stub: ext/charlock_holmes/extconf.rb

Gem::Specification.new do |s|
  s.name = "charlock_holmes"
  s.version = "0.6.9.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Brian Lopez", "Vicent Mart\u{ed}"]
  s.date = "2013-04-03"
  s.email = "seniorlopez@gmail.com"
  s.extensions = ["ext/charlock_holmes/extconf.rb"]
  s.files = ["ext/charlock_holmes/extconf.rb"]
  s.homepage = "http://github.com/brianmario/charlock_holmes"
  s.rdoc_options = ["--charset=UTF-8"]
  s.rubygems_version = "2.2.2"
  s.summary = "Character encoding detection, brought to you by ICU"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake-compiler>, [">= 0.7.5"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<chardet>, [">= 0"])
    else
      s.add_dependency(%q<rake-compiler>, [">= 0.7.5"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<chardet>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake-compiler>, [">= 0.7.5"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<chardet>, [">= 0"])
  end
end
