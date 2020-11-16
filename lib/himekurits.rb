# $HOME/.nvm/versions/node/v14.15.0/bin/tsc use nvm.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'open3'
require_relative 'himekuri_ts/version'

class HimekuriTsBasic
  # ruby 2.7.2
  ruby_version = (RUBY_VERSION).to_s
  # HimekuriTs version.
  version = (HimekuriTs::VERSION).to_s
  himekuri_ts = "himekuri_ts-".to_s + version.to_s

  def self.before
    # node_version use LTS version
    node_version = "v14.15.0".to_s
    tsc_path= "$HOME/.nvm/versions/node/" + node_version + "/bin/tsc".to_s

    typescript_path = tsc_path + " " +  "$HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri.ts".to_s
    stdout_ts, stderr_ts, status_ts = Open3.capture3(typescript_path)

    puts stdout_ts
    # puts stderr_ts; puts status_ts
  end
	
  def self.after
    nodejs_path = "node $HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri.js".to_s
	
    stdout_js, stderr_js, status_js = Open3.capture3(nodejs_path)

    puts stdout_js
    # puts stderr_js; puts status_js
  end
end

class HimekuriTsClass
  def self.version
    str = "日めくり数え番号"
    comma = " : "
    puts str.freeze + comma.freeze + HimekuriTs::VERSION
  end
end

__END__