# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday_middleware/encoding_converter/version'

Gem::Specification.new do |spec|
  spec.name          = 'faraday_middleware-encoding_converter'
  spec.version       = FaradayMiddleware::EncodingConverter::VERSION
  spec.authors       = ['Vladimir Valgis']
  spec.email         = ['vladimir.valgis@gmail.com']
  spec.summary       = %q{Faraday middleware for converting encoding if it differs from utf-8}
  spec.description   = %q{Faraday middleware for converting encoding if it differs from utf-8}
  spec.homepage      = 'https://github.com/vvalgis/faraday_middleware-encoding_converter'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'faraday', '~> 0.9'
  spec.add_runtime_dependency 'faraday_middleware', '~> 0.9'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'byebug'
end
