# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chatty_exceptions/version'

Gem::Specification.new do |spec|
  spec.name          = "chatty_exceptions"
  spec.version       = ChattyExceptions::VERSION
  spec.authors       = ["Kerri Miller"]
  spec.email         = ["kerrizor@kerrizor.com"]
  spec.summary       = %q{Exceptions, spoken aloud!}
  spec.description   = %q{chatty_exceptions sends the message from an exception to OS X's `say` command, to help center your focus on the immediate error, rather than being distracted by something in the stack trace.}
  spec.homepage      = "https://github.com/kerrizor/chatty_exceptions"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "mactts"

end
