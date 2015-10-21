# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diacritize/version'

Gem::Specification.new do |spec|
  spec.name          = "diacritize"
  spec.version       = Diacritize::VERSION
  spec.authors       = ["C4mz0r"]
  spec.email         = ["aut0x@hotmail.com"]

  spec.summary       = %q{Diacritizes a string, replacing English alphabetical characters with diacritical ones}
  spec.description   = %q{Replace characters in an existing string with similar-looking diacritical ones (e.g. vowels with dots over them, characters with accents on them, etc.).  This allows you to create strings that have different characters in them, but still keep the string human readable. }
  spec.homepage      = "https://github.com/C4mz0r/diacritize"
  spec.license       = "MIT"

=begin
  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end
=end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
