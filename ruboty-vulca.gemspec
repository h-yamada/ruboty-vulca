# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/vulca/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-vulca"
  spec.version       = Ruboty::Vulca::VERSION
  spec.authors       = ["Hirokazu Yamada"]
  spec.email         = ["h-yamada@mediba.jp"]

  spec.summary       = %q{test}
  spec.description   = %q{test}
  spec.homepage      = ""

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
