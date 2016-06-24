# FlickrEtv

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/flickr_etv`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'flickr_etv'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flickr_etv

## Usage

flickr_etv [options]
-h, --help                       Show help message
-f, --filename FILENAME          The user-supplied filename where to write the result
-k, --keywords KEYWORDS          Array of keywords to search

Example:
flickr_etv -f collage -k "winter","summer","pepito grillo"

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/flickr_etv.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

