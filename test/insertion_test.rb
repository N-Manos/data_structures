require 'minitest'
require 'minitest/autorun'
require 'benchmark'
require 'insertion_sort.rb'


  describe "when InsertionSort is passed an array" do
    it "must sort that array in ascending order" do
      @test_array = [15, 2, 7, 3, 8, 14, 1, 6, 12, 9, 5, 11, 4, 10, 13]
      @sort = InsertionSort.new
      @sort.isort(@test_array)
      @test_array.must_equal [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    end

  it "is really quick when you feed it a sorted array" do
    @test_array = (1..10000).to_a
    @sort = InsertionSort.new
    puts 'starting Insertion Sort pre-sorted 10k benchmark:'
    puts Benchmark.measure {@sort.isort(@test_array)}
  end

  it "finishes reasonably fast when you shuffle an array of 10,000" do
    @test_array = (1..10000).to_a.shuffle
    @sort = InsertionSort.new
    puts 'starting Insertion Sort shuffled 10k benchmark:'
    puts Benchmark.measure {@sort.isort(@test_array)}
  end

  it "doesn't take forever when you reverse an array of 10,000" do
    @test_array = (1..10000).to_a.reverse
    @sort = InsertionSort.new
    puts 'starting Insertion Sort reversed 10k benchmark:'
    puts Benchmark.measure {@sort.isort(@test_array)}
  end
end



