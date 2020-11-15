# $HOME/.nvm/versions/node/v14.15.0/bin/tsc use nvm.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative 'himekuri_ts/version'

# $HOME/.nvm/versions/node/v14.15.0/bin/tsc use nvm
# rubygem update change hiemkuri-x.x.x.x 2 point.
system("$HOME/.nvm/versions/node/v14.15.0/bin/tsc $HOME/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/himekuri_ts-1.0.2.2/lib/himekuri.ts", exception: true)
system("node $HOME/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/himekuri_ts-1.0.2.2/lib/himekuri.js", exception: true)

class HimekuriTsClass
  def self.version
	str = "日めくり数え番号"
	comma = " : "
	puts str.freeze + comma.freeze + HimekuriTs::VERSION
  end
end

HimekuriTsClass.version

__END__