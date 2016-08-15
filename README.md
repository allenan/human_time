# human_time

[![Build Status](https://travis-ci.org/allenan/human_time.svg?branch=master)](https://travis-ci.org/allenan/human_time)
[![Gem Version](https://badge.fury.io/rb/human_time.svg)](https://badge.fury.io/rb/human_time)

Have you ever struggled to understand what a piece of code like this is trying to say?

```ruby
some_time > another_time
```

It should be simple, but our brains don't think in terms of "greater than" or "less than" when it comes to times and dates.

human_time lets you express time comparison the way your human brain thinks:

```ruby
some_time.more_recent_than?(another_time)
```

It also includes some synonyms so you can word it in a way that makes sense to your human brain:

```ruby
some_time.newer_than?(another_time)
some_time.comes_after?(another_time)
```

For a complete list of expressions, see the 'Usage' section below.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'human_time'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install human_time

## Usage

human_time simply adds aliases for the `>`, `>=`, `<` and `<=` methods on the `Date`, `Time` and `DateTime` classes.

```ruby
older_date = Date.parse('2016-01-01')
newer_date = Date.parse('2016-01-02')

older_date < newer_date
# => true

older_date.older_than?(newer_date)
# => true

newer_date > older_date
# => true

newer_date.newer_than?(older_date)
# => true
```

### `>` aliases

- `newer_than?`
- `more_recent_than?`
- `comes_after?`

### `>=` aliases

- `newer_than_or_equal_to?`
- `more_recent_than_or_equal_to?`
- `after_or_equal_to?`

### `<` aliases

- `older_than?`
- `comes_before?`

### `<=` aliases

- `older_than_or_equal_to?`
- `before_or_equal_to?`

## RSpec Matchers

human_time also provides RSpec matchers for more understandable time comparisons in your tests.

To use these, include the following in your `spec_helper.rb` file:

```ruby
require 'human_time/rspec_matchers'
```

And then you can use the following matchers:

```ruby
older_date = Date.parse('2016-01-01')
newer_date = Date.parse('2016-01-02')

expect(newer_date).to be_more_recent_than(older_date)
expect(newer_date).to be_newer_than(older_date)
expect(newer_date).to be_more_recent_than_or_equal_to(older_date)
expect(newer_date).to be_newer_than_or_equal_to(newer_date)
expect(older_date).to be_older_than(newer_date)
expect(older_date).to be_older_than_or_equal_to(older_date)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/allenan/human_time. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
