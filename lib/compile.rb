# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'open3'

class HimekuriTsBasic
  # Node LTS VERSION update point
  @@node_version = "18.12.1".to_s

  def self.compile
    tsc_path = "$HOME/.nodenv/versions/" + @@node_version + "/bin/tsc".to_s

    typescript_path = tsc_path + " " + "#{File.dirname(__FILE__)}/himekuri.ts".to_s
    stdout_ts = Open3.capture3(typescript_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end

  def self.compile_locale
    tsc_path = "$HOME/.nodenv/versions/" + @@node_version + "/bin/tsc".to_s

    typescript_path = tsc_path + " " + "#{File.dirname(__FILE__)}/locale.ts".to_s
    stdout_ts = Open3.capture3(typescript_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end
end

class HimekuriTsBasicWeb
  # Node LTS VERSION update point
  @@node_version = "18.12.1".to_s

  def self.day_compile
    tsc_path = "$HOME/.nodenv/versions/" + @@node_version + "/bin/tsc".to_s

    typescript_path = tsc_path + " " + "#{File.dirname(__FILE__)}/himekuri_web_days.ts".to_s
    stdout_ts = Open3.capture3(typescript_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end

  def self.now_compile
    tsc_path = "$HOME/.nodenv/versions/" + @@node_version + "/bin/tsc".to_s

    typescript_path = tsc_path + " " + "#{File.dirname(__FILE__)}/himekuri_web_justnow.ts".to_s
    stdout_ts = Open3.capture3(typescript_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end

  def self.himekuri_compile
    tsc_path = "$HOME/.nodenv/versions/" + @@node_version + "/bin/tsc".to_s

    typescript_path = tsc_path + " " + "#{File.dirname(__FILE__)}/himekuri_web_himekuri.ts".to_s
    stdout_ts = Open3.capture3(typescript_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end
end

HimekuriTsBasic.compile
HimekuriTsBasic.compile_locale
HimekuriTsBasicWeb.day_compile
HimekuriTsBasicWeb.now_compile
HimekuriTsBasicWeb.himekuri_compile

__END__
