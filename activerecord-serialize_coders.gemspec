# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_record/serialize_coders/version'

Gem::Specification.new do |spec|
  spec.name          = "activerecord-serialize_coders"
  spec.version       = ActiveRecord::SerializeCoders::VERSION
  spec.authors       = ["vkill"]
  spec.email         = ["vkill.net@gmail.com"]
  spec.description   = %q{ActiveRecord serialize coders}
  spec.summary       = %q{ActiveRecord serialize coders}
  spec.homepage      = "https://github.com/vkill/activerecord-serialize_coders"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "activerecord", "> 3.1"
  spec.add_dependency "activesupport"
end
