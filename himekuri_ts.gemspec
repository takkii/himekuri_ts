require_relative 'lib/himekuri_ts/version'

Gem::Specification.new do |spec|
  spec.name          = "himekuri_ts"
  spec.version       = HimekuriTs::VERSION
  spec.authors       = ["Takayuki Kamiyama"]
  spec.email         = ["karuma.reason@gmail.com"]

  spec.summary       = "Japanese calendar himekuri for TypeScript."
  spec.description   = "日本語版、日めくり。TypeScript版"
  spec.homepage      = "https://github.com/takkii/himekuri_ts"
  spec.license       = "MIT"
  spec.executables = %w(himekuri_ts)
  spec.metadata = { "github_repo" => "ssh://github.com/takkii/himekuri_ts" }
  spec.require_paths = ["lib"]
  #spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  #pec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  #spec.metadata["homepage_uri"] = spec.homepage
  #spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  #spec.bindir        = "exe"
  #spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  #spec.require_paths = ["lib"]
end
