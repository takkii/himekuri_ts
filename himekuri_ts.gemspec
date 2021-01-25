# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'himekuri_ts/version'

Gem::Specification.new do |spec|
  spec.name          = "himekuri_ts"
  spec.version       = HimekuriTs::VERSION
  spec.authors       = ["Takayuki Kamiyama"]
  spec.email         = ["karuma.reason@gmail.com"]

  spec.summary       = "Japanese calendar himekuri for TypeScript."
  spec.description   = "himekuri typescript version."
  spec.homepage      = "https://github.com/takkii/himekuri_ts"
  spec.license       = "MIT"
  spec.executables = %w(himekuri_ts)
  spec.metadata = { "github_repo" => "ssh://github.com/takkii/himekuri_ts" }
  spec.require_paths = ["lib"]
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
end
