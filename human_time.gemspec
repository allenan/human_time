# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'human_time/version'

Gem::Specification.new do |spec|
  spec.name          = "human_time"
  spec.version       = HumanTime::VERSION
  spec.authors       = ["Andrew Allen"]
  spec.email         = ["andrew@allenan.com"]

  spec.summary       = %q{Ruby time and date comparisons for humans}
  spec.description   = %q{Ruby time and date comparisons for humans}
  spec.homepage      = "https://github.com/allenan/human_time"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.10.4"
  spec.add_development_dependency "awesome_print", "~> 1.7.0"
end
