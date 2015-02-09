# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'footstats/version'

Gem::Specification.new do |spec|
  spec.name          = "footstats"
  spec.version       = Footstats::VERSION
  spec.authors       = ["Paulo Patto"]
  spec.email         = ["paulopatto@gmail.com"]
  spec.summary       = %q{Gem para acessar a api do footstats.}
  spec.description   = %q{Gem  não oficial para acessar a api do serviço footstats.}
  spec.homepage      = "https://github.com/paulopatto/footstats"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 1.9.3"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "json"
  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", " ~> 3.1"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "pry-nav"
end
