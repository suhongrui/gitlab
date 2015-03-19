# -*- encoding: utf-8 -*-
# stub: creole 0.3.8 ruby lib

Gem::Specification.new do |s|
  s.name = "creole"
  s.version = "0.3.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Lars Christensen", "Daniel Mendler"]
  s.date = "2009-02-15"
  s.description = "Creole is a Creole-to-HTML converter for Creole, the lightwight markup language (http://wikicreole.org/)."
  s.email = ["larsch@belunktum.dk", "mail@daniel-mendler.de"]
  s.extra_rdoc_files = ["Manifest.txt", "README.creole"]
  s.files = ["Manifest.txt", "README.creole"]
  s.homepage = "http://github.com/minad/creole"
  s.rdoc_options = ["--main", "README.creole"]
  s.rubyforge_project = "creole"
  s.rubygems_version = "2.2.2"
  s.summary = "Creole is a Creole-to-HTML converter for Creole, the lightwight markup language (http://wikicreole.org/)."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bacon>, [">= 0"])
    else
      s.add_dependency(%q<bacon>, [">= 0"])
    end
  else
    s.add_dependency(%q<bacon>, [">= 0"])
  end
end
