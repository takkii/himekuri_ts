# $HOME/.nvm/versions/node/v14.15.0/bin/tsc use nvm.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative 'himekuri_ts/version'

# HimekuriTs version.
version = (HimekuriTs::VERSION).to_s
himekuri_ts = "himekuri_ts-".to_s + version.to_s

# ruby 2.7.2
ruby_version = (RUBY_VERSION).to_s

# node v14.15.0, LTS upgrade, node version change.
node_version = system("node -v", exception: true).to_s

typescript_path = "$HOME/.nvm/versions/node/" + node_version + "/bin/tsc $HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri.ts".to_s
nodejs_path = "node $HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri.js".to_s

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