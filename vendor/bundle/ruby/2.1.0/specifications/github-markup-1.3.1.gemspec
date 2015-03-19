# -*- encoding: utf-8 -*-
# stub: github-markup 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "github-markup"
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chris Wanstrath"]
  s.date = "2014-11-13"
  s.description = "This gem is used by GitHub to render any fancy markup such as Markdown, Textile, Org-Mode, etc. Fork it and add your own!"
  s.email = "chris@ozmm.org"
  s.executables = ["github-markup"]
  s.files = ["bin/github-markup"]
  s.homepage = "https://github.com/github/markup"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "The code GitHub uses to render README.markup"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<posix-spawn>, ["~> 0.3.8"])
    else
      s.add_dependency(%q<posix-spawn>, ["~> 0.3.8"])
    end
  else
    s.add_dependency(%q<posix-spawn>, ["~> 0.3.8"])
  end
end
