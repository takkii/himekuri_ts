# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'open3'
require_relative 'himekuri_ts/version'

class HimekuriTsBasic
  def self.before
    # vesion info
    ruby_version = (RUBY_VERSION).to_s
    version = (HimekuriTs::VERSION).to_s
    himekuri_ts = "himekuri_ts-".to_s + version.to_s

    # node_version use LTS version
    @@node_version = "v14.15.1".to_s
    tsc_path= "$HOME/.nvm/versions/node/" + node_version + "/bin/tsc".to_s

    typescript_path = tsc_path + " " +  "$HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri.ts".to_s
    stdout_ts, stderr_ts, status_ts = Open3.capture3(typescript_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end
	
  def self.after
    # vesion info
    ruby_version = (RUBY_VERSION).to_s
    version = (HimekuriTs::VERSION).to_s
    himekuri_ts = "himekuri_ts-".to_s + version.to_s
	
    nodejs_path = "node $HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri.js".to_s
	
    stdout_js, stderr_js, status_js = Open3.capture3(nodejs_path)

    stdout_js
    # puts stderr_js; puts status_js
  end
end

class HimekuriTsBasicWebDays < HimekuriTsBasic
  def self.before
    # vesion info
    ruby_version = (RUBY_VERSION).to_s
    version = (HimekuriTs::VERSION).to_s
    himekuri_ts = "himekuri_ts-".to_s + version.to_s
    
    # node_version use LTS version
    @@node_version
    tsc_path= "$HOME/.nvm/versions/node/" + node_version + "/bin/tsc".to_s
    
    typescript_path = tsc_path + " " +  "$HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri_web_days.ts".to_s
    stdout_ts, stderr_ts, status_ts = Open3.capture3(typescript_path)
    
    stdout_ts
    # puts stderr_ts; puts status_ts
  end
  
  def self.after
    # vesion info
    ruby_version = (RUBY_VERSION).to_s
    version = (HimekuriTs::VERSION).to_s
    himekuri_ts = "himekuri_ts-".to_s + version.to_s
    
    nodejs_path = "node $HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri_web_days.js".to_s
    
    stdout_js, stderr_js, status_js = Open3.capture3(nodejs_path)
    
    stdout_js
    # puts stderr_js; puts status_js
  end
end

class HimekuriTsBasicWebJustNow < HimekuriTsBasic
  def self.before
    # vesion info
    ruby_version = (RUBY_VERSION).to_s
    version = (HimekuriTs::VERSION).to_s
    himekuri_ts = "himekuri_ts-".to_s + version.to_s
    
    # node_version use LTS version
    @@node_version
    tsc_path= "$HOME/.nvm/versions/node/" + node_version + "/bin/tsc".to_s
    
    typescript_path = tsc_path + " " +  "$HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri_web_justnow.ts".to_s
    stdout_ts, stderr_ts, status_ts = Open3.capture3(typescript_path)
    
    stdout_ts
    # puts stderr_ts; puts status_ts
  end
  
  def self.after
    # vesion info
    ruby_version = (RUBY_VERSION).to_s
    version = (HimekuriTs::VERSION).to_s
    himekuri_ts = "himekuri_ts-".to_s + version.to_s
    
    nodejs_path = "node $HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri_web_justnow.js".to_s
    
    stdout_js, stderr_js, status_js = Open3.capture3(nodejs_path)
    
    stdout_js
    # puts stderr_js; puts status_js
  end
end

class HimekuriTsBasicWebHimekuri < HimekuriTsBasic
  def self.before
    # vesion info
    ruby_version = (RUBY_VERSION).to_s
    version = (HimekuriTs::VERSION).to_s
    himekuri_ts = "himekuri_ts-".to_s + version.to_s
    
    # node_version use LTS version
    @@node_version
    tsc_path= "$HOME/.nvm/versions/node/" + node_version + "/bin/tsc".to_s
    
    typescript_path = tsc_path + " " +  "$HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri_web_himekuri.ts".to_s
    stdout_ts, stderr_ts, status_ts = Open3.capture3(typescript_path)
    
    stdout_ts
    # puts stderr_ts; puts status_ts
  end
  
  def self.after
    # vesion info
    ruby_version = (RUBY_VERSION).to_s
    version = (HimekuriTs::VERSION).to_s
    himekuri_ts = "himekuri_ts-".to_s + version.to_s
    
    nodejs_path = "node $HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/2.7.0/gems/" + himekuri_ts + "/lib/himekuri_web_himekuri.js".to_s
    
    stdout_js, stderr_js, status_js = Open3.capture3(nodejs_path)
    
    stdout_js
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
