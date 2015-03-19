# Html::Pipeline::Gitlab

This gem implements various filters for [html-pipeline](https://github.com/jch/html-pipeline)
 used by [GitLab](https://about.gitlab.com).

[![build status](https://gitlab-ce.githost.io/projects/5/status.png?ref=master)](https://gitlab-ce.githost.io/projects/5?ref=master)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'html-pipeline-gitlab'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install html-pipeline-gitlab

## Testing

Install required gems

```bash
bundle
```

and then run the test suite:

```bash
bundle exec rake test
```

## Filters

* `GitlabEmojiFilter` - replaces emoji references with images from
[PhantomOpenEmoji](https://github.com/Genshin/PhantomOpenEmoji)

## Contributing

1. Fork it
1. Create your feature branch (`git checkout -b my-new-feature`)
1. Commit your changes (`git commit -am 'Add some feature'`)
1. Push to the branch (`git push origin my-new-feature`)
1. Create a new Merge Request
