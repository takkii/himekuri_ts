require 'minitest'
require 'minitest/autorun'
require 'minitest/benchmark'
require 'minitest/reporters'
require 'date'
require 'himekuri'
require 'himekuri_ts/version'

class MiniTestBenchMark < Minitest::Benchmark
    def setup
    t = Time.new # 今日の日付と時刻
    week = %w(日 月 火 水 木 金 土)[t.wday];
    @timer = t.strftime('%Y年%m月%d日 : %H時%M分%S秒 : ').to_s + week + "曜日".to_s
    @v1 = HimekuriTs::VERSION
    @v2 = '2.0.0'
    refute_equal(@v1, @v2)
    end

    def bench_equal_algorithm_constant
       assert_performance_constant do
        assert_equal @timer, HimekuriClass.new.himekuri
        assert_operator(@v1, :<, @v2)
        end
    end
end
