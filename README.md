# FaradayMiddleware::EncodingConverter

Faraday middleware for converting encoding if it differs from utf-8

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faraday_middleware-encoding_converter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faraday_middleware-encoding_converter

## Usage

```ruby
require 'faraday_middleware/encoding_converter'

connection = Faraday.new do |builder|
  builder.response :convert_encoding
  builder.adapter  Faraday.default_adapter
end

connection.get('http://example.com/some.xml')
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/faraday_middleware-encoding_converter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
