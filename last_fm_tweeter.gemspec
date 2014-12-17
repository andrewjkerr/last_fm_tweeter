# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'last_fm_tweeter/version'

Gem::Specification.new do |spec|
  spec.name          = "last_fm_tweeter"
  spec.version       = LastFmTweeter::VERSION
  spec.authors       = ["Andrew Kerr"]
  spec.email         = ["andrewjkerr47@gmail.com"]
  spec.summary       = %q{Tweets out the last scrobbled song from Last.FM.}
  spec.homepage      = "https://github.com/andrewjkerr/last_fm_tweeter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "lastfm", "~> 1.25.0"
  spec.add_development_dependency "twitter", "~> 5.13.0"
  spec.add_development_dependency "figaro", "~> 1.0.0"
end
