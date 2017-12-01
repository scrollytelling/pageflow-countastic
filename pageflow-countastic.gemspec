# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pageflow/countastic/version'

Gem::Specification.new do |spec|
  spec.name          = "pageflow-countastic"
  spec.version       = Pageflow::Countastic::VERSION
  spec.authors       = ["Joost Baaij"]
  spec.email         = ["joost@spacebabies.nl"]

  spec.summary       = "🌟 Plain boring numbers in your story become animated 🌟"
  spec.description   = "🌟 Plain boring numbers in your story become animated 🌟"
  spec.homepage      = "https://github.com/scrollytelling/pageflow-countastic"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "pageflow", "~> 12.x"
  spec.add_runtime_dependency "rails", ">= 3.0"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
