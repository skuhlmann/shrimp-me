# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shrimp_me/version'

Gem::Specification.new do |spec|
  spec.name          = "shrimp_me"
  spec.version       = ShrimpMe::VERSION
  spec.authors       = ["Sam Kuhlmann"]
  spec.email         = ["samkuhlmann@gmail.com"]
  spec.summary       = %q{A wrapper gem for the Shrimp.me url shortener service}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/skuhlmann/shrimp-me"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_dependency "httparty"
end
