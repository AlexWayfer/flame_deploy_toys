# Flame Deploy Toys

Toys template for deploying [Flame](https://github.com/AlexWayfer/flame)
application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'flame_deploy_toys'
```

And then execute:

```shell
bundle install
```

Or install it yourself as:

```shell
gem install flame_deploy_toys
```

## Usage

```ruby
require 'flame_deploy_toys'
expand FlameDeployToys::Template
```

## Development

After checking out the repo, run `bundle install` to install dependencies.
Then, run `bundle exec rake spec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`,
and then run `bundle exec rake release`, which will create a git tag
for the version, push git commits and tags, and push the `.gem` file
to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/AlexWayfer/flame_deploy_toys).

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).
