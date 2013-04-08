# Reportr

Reportr is a time interval reporting library. Think of it as a more precise
version of Rails' `distance_of_time_in_words`. If you're trying to report a
length of time of 3 days, 5 minutes and 45 seconds, instead of `3 days`,
you'll get `03:00:05:45`. You can also choose to round to the nearest minute.
See Usage below for details.

## Installation

Add this line to your application's Gemfile:

    gem 'reportr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reportr

## Usage

Using reportr is easy:

    Reportr.report(start_time, end_time, options={})

Currently available options are:

`ignore_seconds` -- if set to true, will round to the nearest minute

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

Copyright (c) 2013 Michael Berkowitz (@hal678). See LICENSE.txt for further details.
