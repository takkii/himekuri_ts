# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'open3'
require 'himekuri_ts/version'

class HimekuriTsBasic

  def self.running
    # version info
    version = (HimekuriTs::VERSION).to_s

    nodejs_path = "node" + " " + "#{File.dirname(__FILE__) + '/himekuri.js'}".to_s

    stdout_js, stderr_js, status_js = Open3.capture3(nodejs_path)

    stdout_js
    # puts stderr_js; puts status_js
  end
end

class HimekuriTsBasicWeb

  def node_running_web_days
    # version info
    version = (HimekuriTs::VERSION).to_s

    nodejs_path = "node" + " " + "#{File.dirname(__FILE__) + '/himekuri_web_days.js'}".to_s

    stdout_js, stderr_js, status_js = Open3.capture3(nodejs_path)

    stdout_js
    # puts stderr_js; puts status_js
  end

  def node_running_web_now
    # version info
    version = (HimekuriTs::VERSION).to_s

    nodejs_path = "node" + " " + "#{File.dirname(__FILE__) + '/himekuri_web_justnow.js'}".to_s

    stdout_js, stderr_js, status_js = Open3.capture3(nodejs_path)

    stdout_js
    # puts stderr_js; puts status_js
  end

  def node_running_web_himekuri
    # version info
    version = (HimekuriTs::VERSION).to_s

    nodejs_path = "node" + " " + "#{File.dirname(__FILE__) + '/himekuri_web_himekuri.js'}".to_s

    stdout_js, stderr_js, status_js = Open3.capture3(nodejs_path)

    stdout_js
    # puts stderr_js; puts status_js
  end

  def node_running_web_locale
    # version info
    version = (HimekuriTs::VERSION).to_s

    nodejs_path = "node" + " " + "#{File.dirname(__FILE__) + '/locale.js'}".to_s

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
