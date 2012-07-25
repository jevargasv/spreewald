# -*- encoding: utf-8 -*-
$: << File.expand_path('../lib', __FILE__)
require 'spreewald_support/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Tobias Kraze"]
  gem.email         = ["tobias@kraze.eu"]
  gem.description   = %q{A collection of cucumber steps we use in our projects, including steps to check HTML, tables, emails and some utility methods.}
  gem.summary       = %q{Collection of useful cucumber steps.}
  gem.homepage      = "https://github.com/makandra/spreewald"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "spreewald"
  gem.require_paths = ["lib"]
  gem.version       = Spreewald::VERSION

  gem.add_runtime_dependency('cucumber-rails', '>=1.3.0')
  gem.add_runtime_dependency('cucumber')
  gem.add_runtime_dependency('capybara')
end
