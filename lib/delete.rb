# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'fileutils'
require 'open3'

# HimekuriTsBasic delete instance.
class HimekuriTsBasic
  def self.delete
    FileUtils.rm_rf("#{File.dirname(__FILE__)}/himekuri.js")
  end

  def self.delete_locale
    FileUtils.rm_rf("#{File.dirname(__FILE__)}/locale.js")
  end
end

# HimekuriTsBasicWeb delete instance.
class HimekuriTsBasicWeb
  def self.day_delete
    FileUtils.rm_rf("#{File.dirname(__FILE__)}/himekuri_web_days.js")
  end

  def self.now_delete
    FileUtils.rm_rf("#{File.dirname(__FILE__)}/himekuri_web_justnow.js")
  end

  def self.himekuri_delete
    FileUtils.rm_rf("#{File.dirname(__FILE__)}/himekuri_web_himekuri.js")
  end
end

HimekuriTsBasic.delete
HimekuriTsBasic.delete_locale
HimekuriTsBasicWeb.day_delete
HimekuriTsBasicWeb.now_delete
HimekuriTsBasicWeb.himekuri_delete

__END__
