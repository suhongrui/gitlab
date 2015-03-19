# -*- encoding: utf-8 -*-
# stub: mousetrap-rails 1.4.6 ruby lib

Gem::Specification.new do |s|
  s.name = "mousetrap-rails"
  s.version = "1.4.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Nick Kugaevsky"]
  s.cert_chain = ["gem-public_cert.pem"]
  s.date = "2013-11-25"
  s.description = "Mousetrap is a javascript library for handling keyboard shortcuts in your web applications. This gem integrates Mousetrap with Rails asset pipeline for easy of use."
  s.email = "nick@kugaevsky.ru"
  s.homepage = "http://kugaevsky.github.com/mousetrap-rails"
  s.licenses = ["MIT", "Apache"]
  s.post_install_message = "\n\e[33mRemember to run generator to generate sample file and include mousetrap-rails with Rails Asset Pipeline\e[0m\n\n    \e[32m$ rails generate mousetrap:install \e[0m\n\n"
  s.rubygems_version = "2.2.2"
  s.summary = "Integrate Mousetrap javascript library with Rails Asset Pipeline"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rails>, ["~> 3.2.12"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3.5"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.13.0"])
      s.add_development_dependency(%q<genspec>, ["~> 0.2.7"])
      s.add_development_dependency(%q<sass>, ["~> 3.2.1"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.2.12"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.5"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.13.0"])
      s.add_dependency(%q<genspec>, ["~> 0.2.7"])
      s.add_dependency(%q<sass>, ["~> 3.2.1"])
      s.add_dependency(%q<coveralls>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.2.12"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.5"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.13.0"])
    s.add_dependency(%q<genspec>, ["~> 0.2.7"])
    s.add_dependency(%q<sass>, ["~> 3.2.1"])
    s.add_dependency(%q<coveralls>, [">= 0"])
  end
end
