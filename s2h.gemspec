# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 's2h/version'

Gem::Specification.new do |spec|
  spec.name          = "s2h"
  spec.version       = S2h::VERSION
  spec.authors       = ["ka"]
  spec.email         = ["ka.kaosf@gmail.com"]

  spec.summary       = %q{Seireki (西暦) to Heisei (平成)}
  spec.description   = %q{A convering tool for wareki and seireki.}
  spec.homepage      = "https://github.com/kaosf/s2h"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
