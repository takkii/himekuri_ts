# $HOME/.nvm/versions/node/v14.15.0/bin/tsc use nvm.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative 'himekuri_ts/version'

# rubygem update change.
# typescript_path and nodejs_path.
# hiemkuri_ts-x.x.x.x, vesion info.

typescript_path = "$HOME/.nvm/versions/node/v14.15.0/bin/tsc $HOME/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/himekuri_ts-1.0.3/lib/himekuri.ts".to_s
nodejs_path = "node $HOME/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/himekuri_ts-1.0.3/lib/himekuri.js".to_s

system(typescript_path, exception: true)
system(nodejs_path, exception: true)

class HimekuriTsClass
  def self.version
	str = "日めくり数え番号"
	comma = " : "
	puts str.freeze + comma.freeze + HimekuriTs::VERSION
  end
end

HimekuriTsClass.version

__END__