# -*- encoding: utf-8 -*-
# stub: asciidoctor 0.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "asciidoctor"
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dan Allen", "Ryan Waldron", "Jeremy McAnally", "Jason Porter", "Nick Hengeveld"]
  s.date = "2013-09-05"
  s.description = "A fast, open source text processor and publishing toolchain, written in Ruby, for transforming AsciiDoc markup into HTML 5, DocBook 4.5, DocBook 5.0 and custom outupt formats.\n"
  s.email = ["dan.j.allen@gmail.com", "rew@erebor.com"]
  s.executables = ["asciidoctor", "asciidoctor-safe"]
  s.extra_rdoc_files = ["LICENSE", "CHANGELOG.adoc"]
  s.files = ["CHANGELOG.adoc", "LICENSE", "bin/asciidoctor", "bin/asciidoctor-safe"]
  s.homepage = "http://asciidoctor.org"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.rubyforge_project = "asciidoctor"
  s.rubygems_version = "2.2.2"
  s.summary = "An implementation of the AsciiDoc text processor and publishing toolchain in Ruby"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<coderay>, [">= 0"])
      s.add_development_dependency(%q<erubis>, [">= 0"])
      s.add_development_dependency(%q<nokogiri>, ["~> 1.5.10"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<tilt>, [">= 0"])
      s.add_development_dependency(%q<slim>, [">= 0"])
      s.add_development_dependency(%q<haml>, [">= 0"])
    else
      s.add_dependency(%q<coderay>, [">= 0"])
      s.add_dependency(%q<erubis>, [">= 0"])
      s.add_dependency(%q<nokogiri>, ["~> 1.5.10"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<tilt>, [">= 0"])
      s.add_dependency(%q<slim>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
    end
  else
    s.add_dependency(%q<coderay>, [">= 0"])
    s.add_dependency(%q<erubis>, [">= 0"])
    s.add_dependency(%q<nokogiri>, ["~> 1.5.10"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<tilt>, [">= 0"])
    s.add_dependency(%q<slim>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
  end
end
