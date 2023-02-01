# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require 'himekuri_ts/version'

# Mini_test file load.
class MiniVersion < Minitest::Test
  def test_version
    @v1 = HimekuriTs::VERSION
    @v2 = '2.0.0'

    refute_equal(@v1, @v2)
    assert_operator(@v1, :<, @v2)
  end
end
