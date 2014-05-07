# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'osrc/version'

Gem::Specification.new do |spec|
  spec.name          = "osrc"
  spec.version       = Osrc::VERSION
  spec.authors       = ["vajapravin"]
  spec.email         = ["vajapravin23@gmail.com"]
  spec.summary       = %q{Using GitHub username to see a dynamically generated progress report for their open source contributions.}
  spec.description   = %q{The Open Source Report Card(osrc) is an open source project developed on GitHub and licensed under the MIT License.}
  spec.homepage      = "https://github.com/vajapravin/osrc"
  spec.license       = "MIT"

  # spec.files         = `git ls-files -z`.split("\x0")
  spec.files         = Dir["README.md","Gemfile","Rakefile","lib/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 0"
  spec.add_development_dependency 'faraday', "~> 0"
  spec.add_development_dependency 'mime-types', "~> 0"

end