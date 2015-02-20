# ShrimpMe

A wrapper gem for the Shrimpy.me url shortener api.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shrimp_me'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shrimp_me

## Usage

Here's a simple script that shrimps your url:
<pre><code>
require 'shrimp_me'

# Create an instance of the client
connection = ShrimpMe::Shrimp.new

# Post your long url
shrimpy_url = connection.shorten("http://en.wikipedia.org/wiki/Norm_Peterson")

</pre></code>

## Contributing

1. Fork it ( https://github.com/[my-github-username]/shrimp_me/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
