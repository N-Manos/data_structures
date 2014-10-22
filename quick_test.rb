require 'minitest'
require 'minitest/autorun'
require 'benchmark'
require 'quick_sort.rb'

  describe "when InsertionSort is passed an array" do
    it "must sort that array in ascending order" do
      @test_array = [15, 2, 7, 3, 8, 14, 1, 6, 12, 9, 5, 11, 4, 10, 13]
      @sort = QuickSort.new
      @sort.qsort(@test_array, 0, @test_array.length-1)
      @test_array.must_equal [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    end


  it "is really quick when you feed it a sorted array" do
    @test_array = (1..5000).to_a
    @sort = QuickSort.new
    puts 'starting Quick Sort pre-sorted 5k benchmark:'
    puts Benchmark.measure {@sort.qsort(@test_array, 0, @test_array.length-1)}
  end

  it "finishes reasonably fast when you shuffle an array of 10,000" do
    @test_array = (1..5000).to_a.shuffle
    @sort = QuickSort.new
    puts 'starting Quick Sort shuffled 5k benchmark:'
    puts Benchmark.measure {@sort.qsort(@test_array, 0, @test_array.length-1)}
  end

  it "doesn't take forever when you reverse an array of 10,000" do
    @test_array = (1..5000).to_a.reverse
    @sort = QuickSort.new
    puts 'starting Quick Sort reversed 5k benchmark:'
    puts Benchmark.measure {@sort.qsort(@test_array, 0, @test_array.length-1)}
  end
end
