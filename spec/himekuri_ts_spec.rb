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
    require 'himekurits'
  end

  it 'has a HimekuriTsBasic running methods or nil' do
    HimekuriTsBasic.running
    expect(HimekuriTsBasic.running).not_to be nil
  end
end
