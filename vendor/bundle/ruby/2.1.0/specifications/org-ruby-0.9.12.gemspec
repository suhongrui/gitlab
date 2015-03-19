# -*- encoding: utf-8 -*-
# stub: org-ruby 0.9.12 ruby lib

Gem::Specification.new do |s|
  s.name = "org-ruby"
  s.version = "0.9.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Brian Dewey", "Waldemar Quevedo"]
  s.date = "2014-12-22"
  s.description = "An Org mode parser written in Ruby."
  s.email = "waldemar.quevedo@gmail.com"
  s.executables = ["org-ruby"]
  s.extra_rdoc_files = ["History.org", "README.org", "bin/org-ruby"]
  s.files = ["History.org", "README.org", "bin/org-ruby"]
  s.homepage = "https://github.com/wallyqs/org-ruby"
  s.licenses = ["MIT"]
  s.rubyforge_project = "org-ruby"
  s.rubygems_version = "2.2.2"
  s.summary = "This gem contains Ruby routines for parsing org-mode files."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubypants>, ["~> 0.2"])
    else
      s.add_dependency(%q<rubypants>, ["~> 0.2"])
    end
  else
    s.add_dependency(%q<rubypants>, ["~> 0.2"])
  end
end
