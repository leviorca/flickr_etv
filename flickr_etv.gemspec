# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flickr_etv/version'

Gem::Specification.new do |spec|
  spec.name          = "flickr_etv"
  spec.version       = FlickrEtv::VERSION
  spec.authors       = ["Levi Orta"]
  spec.email         = ["levi.orta@gmail.com"]

  spec.summary       = %q{flickr API Test}
  spec.description   = %q{flickr API Test}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["flickr_etv"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "flickraw"
end
