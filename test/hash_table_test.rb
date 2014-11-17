require 'minitest'
require 'minitest/autorun'
require 'benchmark'
require 'hash_table.rb'



  describe "A hash table that can store keys and values" do


  it "must set and get words" do
    hash = HashTable.new
    # path = File.expand_path("../../american-english", __FILE__)
    # counter = 0
    # IO.foreach(path) {|x|
    #   hash.set(x, counter)
    #   counter += 1
    # }
    # counter = 0
    # IO.foreach(path) {|x|
    #   assert_equals hash.get(x), counter
    #   counter += 1
    # }
    hash.set("Aconcagua's", 3)
    hash.get("Aconcagua's").value.must_equal 3

  end

  it "must determine placement in the table using a hash function" do
    hash = HashTable.new
    hash.placement("Aconcagua's").must_equal 28

  end

end
