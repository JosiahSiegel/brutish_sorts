require 'minitest/autorun'
require 'brutish_sorts'
require 'benchmark'

class BrutishSortsTest < Minitest::Test

  @array = Array.new(4000){ rand(5) }

  class << self
    attr_accessor :array
  end

  def test_selection_sort
    Benchmark.bm do |x|
      selection_sort = []
      x.report("selection_sort") {selection_sort = BrutishSortsTest.array.selection_sort}
      #puts "#{BrutishSortsTest.array}"
      assert_equal BrutishSortsTest.array.sort,
        selection_sort
    end
  end

  def test_insertion_sort
    Benchmark.bm do |x|
      insertion_sort = []
      x.report("insertion_sort") {insertion_sort = BrutishSortsTest.array.insertion_sort}
      #puts "#{BrutishSortsTest.array}"
      assert_equal BrutishSortsTest.array.sort,
        insertion_sort
    end
  end
end