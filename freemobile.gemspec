# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'freemobile/version'

Gem::Specification.new do |spec|
  spec.name          = "freemobile"
  spec.version       = Freemobile::VERSION
  spec.authors       = ["CkuT"]
  spec.email         = ["s3cu@hotmail.fr"]
  spec.summary       = %q{Freemobile gem allows you to use Freemobile API}
  spec.description   = %q{This gem allows you to send SMS notifications on your phone through the French mobile provider "Free"}
  spec.homepage      = "https://github.com/CkuT/freemobile"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rest-client"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
