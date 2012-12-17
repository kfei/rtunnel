# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rtunnel/version'

Gem::Specification.new do |spec|
  spec.name          = "rtunnel"
  spec.version       = Rtunnel::VERSION
  spec.authors       = ["kfei"]
  spec.email         = ["kfei@kfei.net"]
  spec.description   = %q{A reverse SSH tunnel handler}
  spec.summary       = %q{An easier way to manage a set of reverse SSH tunnel.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end