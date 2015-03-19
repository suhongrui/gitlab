# -*- encoding: utf-8 -*-
# stub: gollum-lib 4.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gollum-lib"
  s.version = "4.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tom Preston-Werner", "Rick Olson"]
  s.date = "2014-11-26"
  s.description = "A simple, Git-powered wiki with a sweet API and local frontend."
  s.email = "tom@github.com"
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  s.files = ["LICENSE", "README.md"]
  s.homepage = "http://github.com/gollum/gollum-lib"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9")
  s.rubyforge_project = "gollum-lib"
  s.rubygems_version = "2.2.2"
  s.summary = "A simple, Git-powered wiki."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<gollum-grit_adapter>, ["~> 0.1.0"])
      s.add_runtime_dependency(%q<rouge>, ["~> 1.7.4"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.6.4"])
      s.add_runtime_dependency(%q<stringex>, ["~> 2.5.1"])
      s.add_runtime_dependency(%q<sanitize>, ["~> 2.1.0"])
      s.add_runtime_dependency(%q<github-markup>, ["~> 1.3.1"])
      s.add_development_dependency(%q<org-ruby>, ["~> 0.9.9"])
      s.add_development_dependency(%q<github-markdown>, ["~> 0.6.7"])
      s.add_development_dependency(%q<RedCloth>, ["~> 4.2.9"])
      s.add_development_dependency(%q<mocha>, ["~> 1.1.0"])
      s.add_development_dependency(%q<shoulda>, ["~> 3.5.0"])
      s.add_development_dependency(%q<wikicloth>, ["~> 0.8.1"])
      s.add_development_dependency(%q<rake>, ["~> 10.4.0"])
      s.add_development_dependency(%q<pry>, ["~> 0.10.1"])
      s.add_development_dependency(%q<rb-readline>, ["~> 0.5.1"])
      s.add_development_dependency(%q<minitest-reporters>, ["~> 0.14.16"])
      s.add_development_dependency(%q<nokogiri-diff>, ["~> 0.2.0"])
      s.add_development_dependency(%q<guard>, ["~> 2.8.2"])
      s.add_development_dependency(%q<guard-minitest>, ["~> 2.3.2"])
      s.add_development_dependency(%q<rb-inotify>, ["~> 0.9.3"])
      s.add_development_dependency(%q<rb-fsevent>, ["~> 0.9.4"])
      s.add_development_dependency(%q<rb-fchange>, ["~> 0.0.6"])
      s.add_development_dependency(%q<twitter_cldr>, ["~> 3.1.0"])
    else
      s.add_dependency(%q<gollum-grit_adapter>, ["~> 0.1.0"])
      s.add_dependency(%q<rouge>, ["~> 1.7.4"])
      s.add_dependency(%q<nokogiri>, ["~> 1.6.4"])
      s.add_dependency(%q<stringex>, ["~> 2.5.1"])
      s.add_dependency(%q<sanitize>, ["~> 2.1.0"])
      s.add_dependency(%q<github-markup>, ["~> 1.3.1"])
      s.add_dependency(%q<org-ruby>, ["~> 0.9.9"])
      s.add_dependency(%q<github-markdown>, ["~> 0.6.7"])
      s.add_dependency(%q<RedCloth>, ["~> 4.2.9"])
      s.add_dependency(%q<mocha>, ["~> 1.1.0"])
      s.add_dependency(%q<shoulda>, ["~> 3.5.0"])
      s.add_dependency(%q<wikicloth>, ["~> 0.8.1"])
      s.add_dependency(%q<rake>, ["~> 10.4.0"])
      s.add_dependency(%q<pry>, ["~> 0.10.1"])
      s.add_dependency(%q<rb-readline>, ["~> 0.5.1"])
      s.add_dependency(%q<minitest-reporters>, ["~> 0.14.16"])
      s.add_dependency(%q<nokogiri-diff>, ["~> 0.2.0"])
      s.add_dependency(%q<guard>, ["~> 2.8.2"])
      s.add_dependency(%q<guard-minitest>, ["~> 2.3.2"])
      s.add_dependency(%q<rb-inotify>, ["~> 0.9.3"])
      s.add_dependency(%q<rb-fsevent>, ["~> 0.9.4"])
      s.add_dependency(%q<rb-fchange>, ["~> 0.0.6"])
      s.add_dependency(%q<twitter_cldr>, ["~> 3.1.0"])
    end
  else
    s.add_dependency(%q<gollum-grit_adapter>, ["~> 0.1.0"])
    s.add_dependency(%q<rouge>, ["~> 1.7.4"])
    s.add_dependency(%q<nokogiri>, ["~> 1.6.4"])
    s.add_dependency(%q<stringex>, ["~> 2.5.1"])
    s.add_dependency(%q<sanitize>, ["~> 2.1.0"])
    s.add_dependency(%q<github-markup>, ["~> 1.3.1"])
    s.add_dependency(%q<org-ruby>, ["~> 0.9.9"])
    s.add_dependency(%q<github-markdown>, ["~> 0.6.7"])
    s.add_dependency(%q<RedCloth>, ["~> 4.2.9"])
    s.add_dependency(%q<mocha>, ["~> 1.1.0"])
    s.add_dependency(%q<shoulda>, ["~> 3.5.0"])
    s.add_dependency(%q<wikicloth>, ["~> 0.8.1"])
    s.add_dependency(%q<rake>, ["~> 10.4.0"])
    s.add_dependency(%q<pry>, ["~> 0.10.1"])
    s.add_dependency(%q<rb-readline>, ["~> 0.5.1"])
    s.add_dependency(%q<minitest-reporters>, ["~> 0.14.16"])
    s.add_dependency(%q<nokogiri-diff>, ["~> 0.2.0"])
    s.add_dependency(%q<guard>, ["~> 2.8.2"])
    s.add_dependency(%q<guard-minitest>, ["~> 2.3.2"])
    s.add_dependency(%q<rb-inotify>, ["~> 0.9.3"])
    s.add_dependency(%q<rb-fsevent>, ["~> 0.9.4"])
    s.add_dependency(%q<rb-fchange>, ["~> 0.0.6"])
    s.add_dependency(%q<twitter_cldr>, ["~> 3.1.0"])
  end
end
