# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reportr/version'

Gem::Specification.new do |spec|
  spec.name          = "reportr"
  spec.version       = Reportr::VERSION
  spec.authors       = ["Michael Berkowitz"]
  spec.email         = ["michael.berkowitz@gmail.com"]
  spec.description   = %q{Simple time interval formatter}
  spec.summary       = %q{Simple formatter for time intervals from milliseconds to years}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'cucumber'
  spec.add_development_dependency 'rake'
end
