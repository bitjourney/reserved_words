# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reserved_words/version'

Gem::Specification.new do |spec|
  spec.name          = 'reserved_words'
  spec.version       = ReservedWords::VERSION
  spec.authors       = ['Masahiro Ihara', 'Takaya Deguchi', 'Kenju Wagatsuma']
  spec.email         = ['ihara2525@gmail.com', 'dex1t@degoo.org', 'kenju-wagatsuma@bitjourney.com']

  spec.summary       = 'Simple library to keep reserved words'
  spec.description   = 'Simple library to keep reserved words'
  spec.homepage      = 'https://github.com/bitjourney/reserved_words'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'rubocop', '~> 0.74.0'
end
