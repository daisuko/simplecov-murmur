# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplecov-murmur/version'

Gem::Specification.new do |gem|
  gem.name          = "simplecov-murmur"
  gem.version       = SimpleCov::Formatter::MurMurFormatter::VERSION
  gem.authors       = ["daisuko"]
  gem.email         = ["striker.daisuko@gmail.com"]
  gem.description   = %q{Console formatter for SimpleCov}
  gem.summary       = %q{Console formatter for SimpleCov}
  gem.homepage      = "https://github.com/daisuko/simplecov-murmur"

  gem.add_dependency 'colorize'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'minitest'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
