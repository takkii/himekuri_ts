# frozen_string_literal: true

require 'spec_helper'

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

RSpec.describe 'HimekuriTs_VERSION' do
  before do
    require 'himekuri_ts/version'
  end

  it 'has a version number or nil' do
    expect(HimekuriTs::VERSION).not_to be nil
  end

  it 'has a VERSION, himekuri_ts version equal?' do
    VERSION = '1.0.4'.to_s.freeze
    expect(HimekuriTs::VERSION).to eq(VERSION)
  end

  it 'does something useful' do
    expect(false).to eq(false)
  end
end

RSpec.describe 'HimekuriTs_DATE' do
  before do
    require 'date'
    require 'himekuri'
    require 'himekurits'
  end

  it 'has a just now or himekuri (rubygems)' do
    t = Time.new # 今日の日付と時刻
    timer = t.strftime('%Y年%m月%d日：%H時%M分%S秒')
    expect(timer).to eq(HimekuriClass.new.himekuri)
  end

  it 'has a HimekuriTs just now web or nil' do
    HimekuriTsBasicWebJustNow.before
    expect(HimekuriTsBasicWebJustNow.after).not_to be nil
  end
end
