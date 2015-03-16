# Footstats (not ready for use)
[![Build Status](https://travis-ci.org/paulopatto/footstats.svg?branch=master)](https://travis-ci.org/paulopatto/footstats)
[![Code Climate](https://codeclimate.com/github/paulopatto/footstats/badges/gpa.svg)](https://codeclimate.com/github/paulopatto/footstats)
[![Coverage Status](https://coveralls.io/repos/paulopatto/footstats/badge.svg)](https://coveralls.io/r/paulopatto/footstats)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'footstats'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install footstats

## Usage

### Configuration

Para efetuar configurações globais use:

```ruby
Footstats.configure do |config|
  config.token = 'ABCD-1234'
end
```

TODO: Write usage instructions here


```ruby
require 'footstats'

client = Footstats.new
@drivers = client.racing.drivers

racing_client = Footstats::Api::Racing.new
@drivers = racing_client.drivers

@drivers.to_json
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/footstats/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


## FOOTSTATS
Footstats e dados de api são uma propriedade da *Footstats estatísticas especializada em futebol*
