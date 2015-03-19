# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "gitlab_emoji"
  spec.version       = `cat VERSION`
  spec.authors       = ["Marin Jankovski"]
  spec.email         = ["marin@gitlab.com"]
  spec.description   = %q{GitLab emoji assets}
  spec.summary       = %q{Ruby gem for emojis in GitLab}
  spec.homepage      = "https://gitlab.com/gitlab-org/gitlab_emoji"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "emoji", "~> 1.0.1"
end
