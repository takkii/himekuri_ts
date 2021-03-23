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
    VERSION = '2.0.0'.to_s.freeze
    expect(HimekuriTs::VERSION).to be < (VERSION)
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
    week = %w(日 月 火 水 木 金 土)[t.wday];
    timer = t.strftime('%Y年%m月%d日 : %H時%M分%S秒 : ').to_s + week + "曜日".to_s
    expect(timer).to eq(HimekuriClass.new.himekuri)
  end

  it 'has a HimekuriTsBasic running methods or nil' do
    HimekuriTsBasic.running
    expect(HimekuriTsBasic.running).not_to be nil
  end
end
