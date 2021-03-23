# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'open3'

class HimekuriTsBasic
  # Node LTS VERSION update point
  @@node_version = "v14.16.0".to_s

  def self.compile
    # vesion info
    ruby_version = (RUBY_VERSION).to_s
    ruby_folder_version = ("3.0.0").to_s
    version = (HimekuriTs::VERSION).to_s
    himekuri_ts = "himekuri_ts-".to_s + version.to_s

    tsc_path= "$HOME/.nvm/versions/node/" + @@node_version + "/bin/tsc".to_s

    typescript_path = tsc_path + " " + "#{File.dirname(__FILE__)}/himekuri.ts".to_s
    stdout_ts, stderr_ts, status_ts = Open3.capture3(typescript_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end
end

class HimekuriTsBasicWeb
  # Node LTS VERSION update point
  @@node_version = "v14.16.0".to_s

  def self.day_compile
    # vesion info
    ruby_version = (RUBY_VERSION).to_s
    ruby_folder_version = ("3.0.0").to_s
    version = (HimekuriTs::VERSION).to_s
    himekuri_ts = "himekuri_ts-".to_s + version.to_s

    tsc_path= "$HOME/.nvm/versions/node/" + @@node_version + "/bin/tsc".to_s

    typescript_path = tsc_path + " " + "#{File.dirname(__FILE__)}/himekuri_web_days.ts".to_s
    stdout_ts, stderr_ts, status_ts = Open3.capture3(typescript_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end

  def self.now_compile
    # vesion info
    ruby_version = (RUBY_VERSION).to_s
    ruby_folder_version = ("3.0.0").to_s
    version = (HimekuriTs::VERSION).to_s
    himekuri_ts = "himekuri_ts-".to_s + version.to_s

    tsc_path= "$HOME/.nvm/versions/node/" + @@node_version + "/bin/tsc".to_s

    typescript_path = tsc_path + " " + "#{File.dirname(__FILE__)}/himekuri_web_justnow.ts".to_s
    stdout_ts, stderr_ts, status_ts = Open3.capture3(typescript_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end

  def self.himekuri_compile
    # vesion info
    ruby_version = (RUBY_VERSION).to_s
    ruby_folder_version = ("3.0.0").to_s
    version = (HimekuriTs::VERSION).to_s
    himekuri_ts = "himekuri_ts-".to_s + version.to_s

    tsc_path= "$HOME/.nvm/versions/node/" + @@node_version + "/bin/tsc".to_s

    typescript_path = tsc_path + " " + "#{File.dirname(__FILE__)}/himekuri_web_himekuri.ts".to_s
    stdout_ts, stderr_ts, status_ts = Open3.capture3(typescript_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end
end

HimekuriTsBasic.compile
HimekuriTsBasicWeb.day_compile
HimekuriTsBasicWeb.now_compile
HimekuriTsBasicWeb.himekuri_compile

__END__
