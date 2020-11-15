# $HOME/.nvm/versions/node/v14.15.0/bin/tsc use nvm.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative 'himekuri_ts/version'

# $HOME/.nvm/versions/node/v14.15.0/bin/tsc use nvm
system("$HOME/.nvm/versions/node/v14.15.0/bin/tsc ./lib/himekuri.ts", exception: true)
system("node ./lib/himekuri.js", exception: true)

class HimekuriTsClass
  def self.version
	str = "日めくり数え番号"
	comma = " : "
	puts str.freeze + comma.freeze + HimekuriTs::VERSION
  end
end

HimekuriTsClass.version

__END__