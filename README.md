Cucumber Ajaxer
===============

Cucumber should wait for AJAX calls in @javascript Scenarios

## Installation

Add this line to your application's Gemfile:

    gem 'cucumber-ajaxer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cucumber-ajaxer

## Usage

After adding to your project, add this line to __env.rb__:

    require 'cucumber/ajaxer'

# proTip:
It's even better if you create a file in features/support/ with that line


## TODO:

- Activate by default when added to Gemfile

## License

This project is distributed under the GPL...  
See the LICENSE file for more information, or http://www.gnu.org/licenses/gpl.txt

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. BDD your changes... remember, TEST, TEST, TEST!
4. Commit your changes (`git commit -am 'Added some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

## Thanks to:

- Original idea was found here:
http://stackoverflow.com/questions/7286254/cucumber-wait-for-ajaxsuccess
