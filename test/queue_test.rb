require 'minitest'
require 'minitest/autorun'
require 'queue.rb'

describe "a queue that can store data" do

    it "must be able to enqueue data" do
      list = Queue.new
      list.enqueue(1)
      list.size.must_equal 1
    end

    it "must be able to dequeue data" do
      list = Queue.new
      list.enqueue(1)
      list.size.must_equal 1
    end

    it "must be able to enqueue data" do
      list = Queue.new
      list.enqueue(1)
      list.size.must_equal 1
    end

end
