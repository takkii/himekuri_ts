# $HOME/.nvm/versions/node/v14.15.0/bin/tsc use nvm.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative 'himekuri_ts/version'

version = (HimekuriTs::VERSION).to_s
himekuri_ts = "himekuri_ts-".to_s + version.to_s

typescript_path = "$HOME/.nvm/versions/node/v14.15.0/bin/tsc $HOME/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri.ts".to_s
nodejs_path = "node $HOME/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri.js".to_s

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