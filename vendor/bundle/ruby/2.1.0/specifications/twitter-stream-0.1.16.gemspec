# -*- encoding: utf-8 -*-
# stub: twitter-stream 0.1.16 ruby lib

Gem::Specification.new do |s|
  s.name = "twitter-stream"
  s.version = "0.1.16"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Vladimir Kolesnikov"]
  s.date = "2012-04-10"
  s.description = "Simple Ruby client library for twitter streaming API. Uses EventMachine for connection handling. Adheres to twitter's reconnection guidline. JSON format only."
  s.email = "voloko@gmail.com"
  s.extra_rdoc_files = ["README.markdown", "LICENSE"]
  s.files = ["LICENSE", "README.markdown"]
  s.homepage = "http://github.com/voloko/twitter-stream"
  s.rdoc_options = ["--charset=UTF-8"]
  s.rubygems_version = "2.2.2"
  s.summary = "Twitter realtime API client"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<eventmachine>, [">= 0.12.8"])
      s.add_runtime_dependency(%q<simple_oauth>, ["~> 0.1.4"])
      s.add_runtime_dependency(%q<http_parser.rb>, ["~> 0.5.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5.0"])
    else
      s.add_dependency(%q<eventmachine>, [">= 0.12.8"])
      s.add_dependency(%q<simple_oauth>, ["~> 0.1.4"])
      s.add_dependency(%q<http_parser.rb>, ["~> 0.5.1"])
      s.add_dependency(%q<rspec>, ["~> 2.5.0"])
    end
  else
    s.add_dependency(%q<eventmachine>, [">= 0.12.8"])
    s.add_dependency(%q<simple_oauth>, ["~> 0.1.4"])
    s.add_dependency(%q<http_parser.rb>, ["~> 0.5.1"])
    s.add_dependency(%q<rspec>, ["~> 2.5.0"])
  end
end
