require_relative 'lib/himekuri/version'

Gem::Specification.new do |spec|
  spec.name          = "himekuri_ts"
  spec.version       = HimekuriTsVersion::VERSION
  spec.authors       = ["takkii"]
  spec.email         = ["karuma.reason@gmail.com"]

  spec.summary       = %q{Japanese calendar himekuri for TypeScript.}
  spec.description   = %q{日本語版、日めくり。TypeScript版}
  spec.homepage      = "https://github.com/takkii/himekuri"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
