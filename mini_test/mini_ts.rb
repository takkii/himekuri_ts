# frozen_string_literal: true

require 'date'
require 'himekuri'
require 'himekurits'
require 'minitest/autorun'
require 'minitest/reporters'

# Himekurits Class equal
class MiniHimekurits < Minitest::Test
  def test_date
    t = Time.new # 今日の日付と時刻
    week = %w(日 月 火 水 木 金 土)[t.wday];
    @timer = t.strftime('%Y年%m月%d日 : %H時%M分%S秒 : ').to_s + week + "曜日".to_s
    assert_equal @timer, HimekuriClass.new.himekuri
  end
end
