# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'open3'

class HimekuriTsBasic

  def self.delete

    delete_path = "rm -rf " + "#{File.dirname(__FILE__)}/himekuri.js".to_s
    stdout_ts, stderr_ts, status_ts = Open3.capture3(delete_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end
end

class HimekuriTsBasicWeb

  def self.day_delete

    delete_path = "rm -rf " + "#{File.dirname(__FILE__)}/himekuri_web_days.js".to_s
    stdout_ts, stderr_ts, status_ts = Open3.capture3(delete_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end

  def self.now_delete

    delete_path = "rm -rf " + "#{File.dirname(__FILE__)}/himekuri_web_justnow.js".to_s
    stdout_ts, stderr_ts, status_ts = Open3.capture3(delete_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end

  def self.himekuri_delete

    delete_path = "rm -rf " + "#{File.dirname(__FILE__)}/himekuri_web_himekuri.js".to_s
    stdout_ts, stderr_ts, status_ts = Open3.capture3(delete_path)

    stdout_ts
    # puts stderr_ts; puts status_ts
  end
end

HimekuriTsBasic.delete
HimekuriTsBasicWeb.day_delete
HimekuriTsBasicWeb.now_delete
HimekuriTsBasicWeb.himekuri_delete

__END__
