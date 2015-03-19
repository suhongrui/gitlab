# -*- encoding: utf-8 -*-
# stub: gitlab-flowdock-git-hook 0.4.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "gitlab-flowdock-git-hook"
  s.version = "0.4.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ville Lautanala", "Boyan Tabakov"]
  s.date = "2013-10-02"
  s.email = "blade@alslayer.net"
  s.extra_rdoc_files = ["LICENSE.txt", "README.md"]
  s.files = ["LICENSE.txt", "README.md"]
  s.homepage = "http://github.com/bladealslayer/flowdock-git-hook"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Git Post-Receive hook for Flowdock. Gem requirements patched for use with Gitlab."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<gitlab-grit>, [">= 2.4.1"])
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 2.4.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.7"])
      s.add_development_dependency(%q<webmock>, [">= 1.6.4"])
      s.add_development_dependency(%q<jruby-openssl>, [">= 0"])
    else
      s.add_dependency(%q<gitlab-grit>, [">= 2.4.1"])
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 2.4.2"])
      s.add_dependency(%q<rspec>, ["~> 2.8"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.7"])
      s.add_dependency(%q<webmock>, [">= 1.6.4"])
      s.add_dependency(%q<jruby-openssl>, [">= 0"])
    end
  else
    s.add_dependency(%q<gitlab-grit>, [">= 2.4.1"])
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 2.4.2"])
    s.add_dependency(%q<rspec>, ["~> 2.8"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.7"])
    s.add_dependency(%q<webmock>, [">= 1.6.4"])
    s.add_dependency(%q<jruby-openssl>, [">= 0"])
  end
end
