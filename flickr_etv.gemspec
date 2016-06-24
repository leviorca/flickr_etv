# coding: utf-8
lib = File.expand_path('../lib/flickr_etv', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = "flickr_etv"
  spec.version       = FlickrEtv::VERSION
  spec.authors       = ["Levi Orta"]
  spec.email         = ["levi.orta@gmail.com"]

  spec.summary       = %q{A ruby collage maker using Flickr}
  spec.homepage      = "https://github.com/leviorca/flickr_etv"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 11.1"
  spec.add_development_dependency "rspec", "~> 3.0"
end
