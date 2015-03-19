# -*- encoding: utf-8 -*-
# stub: omniauth-multipassword 0.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-multipassword"
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jan Graichen"]
  s.date = "2013-07-24"
  s.description = "A OmniAuth strategy to authenticate using different passwort strategies."
  s.email = ["jan.graichen@altimos.de"]
  s.homepage = "https://github.com/jgraichen/omniauth-multipassword"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "A OmniAuth strategy to authenticate using different passwort strategies."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omniauth>, ["~> 1.0"])
    else
      s.add_dependency(%q<omniauth>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<omniauth>, ["~> 1.0"])
  end
end
