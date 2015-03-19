# -*- encoding: utf-8 -*-
# stub: omniauth-kerberos 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-kerberos"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jan Graichen"]
  s.date = "2012-04-21"
  s.description = "An OmniAuth strategy for Kerberos."
  s.email = ["jan.graichen@altimos.de"]
  s.homepage = "https://github.com/jgraichen/omniauth-kerberos"
  s.rubygems_version = "2.2.2"
  s.summary = "An OmniAuth strategy for Kerberos."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<timfel-krb5-auth>, ["~> 0.8"])
      s.add_runtime_dependency(%q<omniauth-multipassword>, [">= 0"])
    else
      s.add_dependency(%q<timfel-krb5-auth>, ["~> 0.8"])
      s.add_dependency(%q<omniauth-multipassword>, [">= 0"])
    end
  else
    s.add_dependency(%q<timfel-krb5-auth>, ["~> 0.8"])
    s.add_dependency(%q<omniauth-multipassword>, [">= 0"])
  end
end
