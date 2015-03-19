# -*- encoding: utf-8 -*-
# stub: gitlab_omniauth-ldap 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gitlab_omniauth-ldap"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ping Yu"]
  s.date = "2014-10-29"
  s.description = "A LDAP strategy for OmniAuth."
  s.email = ["ping@intridea.com"]
  s.homepage = "https://github.com/gitlabhq/omniauth-ldap"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "A LDAP strategy for OmniAuth."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omniauth>, ["~> 1.0"])
      s.add_runtime_dependency(%q<net-ldap>, ["~> 0.9"])
      s.add_runtime_dependency(%q<pyu-ruby-sasl>, ["~> 0.0.3.1"])
      s.add_runtime_dependency(%q<rubyntlm>, ["~> 0.3"])
    else
      s.add_dependency(%q<omniauth>, ["~> 1.0"])
      s.add_dependency(%q<net-ldap>, ["~> 0.9"])
      s.add_dependency(%q<pyu-ruby-sasl>, ["~> 0.0.3.1"])
      s.add_dependency(%q<rubyntlm>, ["~> 0.3"])
    end
  else
    s.add_dependency(%q<omniauth>, ["~> 1.0"])
    s.add_dependency(%q<net-ldap>, ["~> 0.9"])
    s.add_dependency(%q<pyu-ruby-sasl>, ["~> 0.0.3.1"])
    s.add_dependency(%q<rubyntlm>, ["~> 0.3"])
  end
end
