# -*- encoding: utf-8 -*-
# stub: gitlab-grit 2.7.2 ruby lib

Gem::Specification.new do |s|
  s.name = "gitlab-grit"
  s.version = "2.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tom Preston-Werner", "Scott Chacon", "Dmitriy Zaporozhets"]
  s.date = "2014-10-09"
  s.description = "Grit is a Ruby library for extracting information from a git repository in an object oriented manner. GitLab fork"
  s.email = "m@gitlabhq.com"
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  s.files = ["LICENSE", "README.md"]
  s.homepage = "http://github.com/gitlabhq/grit"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.rubygems_version = "2.2.2"
  s.summary = "Ruby Git bindings."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<charlock_holmes>, ["~> 0.6"])
      s.add_runtime_dependency(%q<posix-spawn>, ["~> 0.3"])
      s.add_runtime_dependency(%q<mime-types>, ["~> 1.15"])
      s.add_runtime_dependency(%q<diff-lcs>, ["~> 1.1"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<charlock_holmes>, ["~> 0.6"])
      s.add_dependency(%q<posix-spawn>, ["~> 0.3"])
      s.add_dependency(%q<mime-types>, ["~> 1.15"])
      s.add_dependency(%q<diff-lcs>, ["~> 1.1"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<charlock_holmes>, ["~> 0.6"])
    s.add_dependency(%q<posix-spawn>, ["~> 0.3"])
    s.add_dependency(%q<mime-types>, ["~> 1.15"])
    s.add_dependency(%q<diff-lcs>, ["~> 1.1"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
