lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reserved_words/version'

Gem::Specification.new do |spec|
  spec.name          = 'reserved_words'
  spec.version       = ReservedWords::VERSION
  spec.authors       = ['Masahiro Ihara']
  spec.email         = ['ihara2525@gmail.com']

  spec.summary       = 'Simple library to keep reserved words'
  spec.description   = 'Simple library to keep reserved words'
  spec.homepage      = 'https://github.com/ihara2525/reserved_words'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'rubocop', '~> 0.31.0'
end
