# Meals

Welcome to to my CLI Gem Portfolio Project, a selection of famous  meals all over the world. 
Where you can check the meals cuisine, category and a youtube video.


in my bin directory:

      bin 
        > run file(this is my executable file) is created 
          I added a shebang line #!/usr/bin/env ruby  to explicitly execute a ruby file.

in my lib directory:

          lib file where I created all my classes and environment file.
        > api.rb or Class Api is where I consume my Api and grab the data for my project.
        > cli.rb or Class Cli is my main point of communication through my user.
        > meals.rb or Class TheMeals is my model class.

and created environment file:

        in this file I require all my gem/depencies and connected my bin directory via run file to my lib directory via environment file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'meals'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install meals

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/meals. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/<github username>/meals/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Meals project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/<github username>/meals/blob/master/CODE_OF_CONDUCT.md).
