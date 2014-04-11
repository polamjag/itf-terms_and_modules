# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itf/terms_and_modules/version'

Gem::Specification.new do |spec|
  spec.name          = "itf-terms_and_modules"
  spec.version       = Itf::TermsAndModules::VERSION
  spec.authors       = ["polamjag"]
  spec.email         = ["s@polamjag.info"]
  spec.summary       = %q{Simple Gem to treat Univ. of Tsukuba's complicated term and module system}
  spec.description   = %q{Simple Gem to treat Univ. of Tsukuba's complicated term and module system}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
