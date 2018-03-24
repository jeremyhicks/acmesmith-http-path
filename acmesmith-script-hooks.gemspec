# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acmesmith-script-hooks/version'

Gem::Specification.new do |spec|
  spec.name          = "acmesmith-script-hooks"
  spec.version       = AcmesmithScriptHooks::VERSION
  spec.authors       = ["Jeremy Hicks"]
  spec.email         = [""]

  spec.summary       = %q{AcmeSmith ChallengeResponders plugin for validating by http-01}
  spec.description   = %q{AcmeSmith ChallengeResponders plugin for validating with letsencrypt by http-01 on a local machine}
  spec.homepage      = "https://github.com/mipmip/acmesmith-script-hooks"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "acmesmith"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "simplecov", "~> 0.12"
end
