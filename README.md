# Diacritize

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'diacritize'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install diacritize

## Usage

This gem allows us to take a string in English and then applies diacritical marks to the characters (when a suitable diacritical character is available).

How can this be useful?  Perhaps you have some boring test data, and you'd like to shake things up a bit while at the same time keeping the strings "human readable".  Or maybe you have an application that seems to be working with standard characters, and you want to throw some of these weird ones at it.  Perhaps you just want to annoy your friends by diacritizing your email before you send it to them.


```ruby
  # Here are some examples!
  require 'diacritize'

  # The normal call gives the same result when called multiple times with the same input:
  Diacritize::diacritize("It looks like we going to have a SUNNY DAY!")
      # => "Ìt lòòks lìkè wè gòìñg tò hàvè à SÙÑÑÝ ÐÀÝ!"

  # If there are no possible diacritical substitutes, then the output does not differ from the input:
  Diacritize::diacritize("qwrtz")
      # => "qwrtz"

  # The random call will differ when called multiple times (it randomly chooses a substitute when many are available for a given character):
  Diacritize::random_diacritize("It looks like we going to have a SUNNY DAY!")
      # => "Ìt lôöks lîkë wë gøîñg tõ hàvé å SÜÑÑÝ ÐÅÝ!"
      # => "Ît lõøks lîkê wé göîñg tó hávè à SÚÑÑÝ ÐÅÝ!"
      # => etc...
 
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/C4mz0r/diacritize.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

