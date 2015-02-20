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

_Create an instance of the client:_
connection = ShrimpMe::Shrimp.new

_Post your long url:_
shrimpy_url = connection.shorten("http://en.wikipedia.org/wiki/Norm_Peterson")
</pre></code>
