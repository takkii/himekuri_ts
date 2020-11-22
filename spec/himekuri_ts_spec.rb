# frozen_string_literal: true

require 'spec_helper'

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

RSpec.describe 'HimekuriTs' do
  before do
    require 'himekuri_ts/version'
  end

  it "has a version number" do
    expect(HimekuriTs::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end
end
