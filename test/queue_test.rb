require 'minitest'
require 'minitest/autorun'
require 'queue.rb'
require 'linked_list.rb'

describe "a queue that can store data" do

    it "must be able to enqueue data" do
      list = Queue.new
      list.enqueue(1)
      list.size.must_equal 1
    end

    it "must be able to dequeue data" do
      list = Queue.new
      list.enqueue(1)
      list.enqueue(2)
      list.enqueue(3)
      list.size.must_equal 3
      list.dequeue.must_equal 1
      list.size.must_equal 2
      list.dequeue.must_equal 2
      list.size.must_equal 1
      list.dequeue.must_equal 3
      list.size.must_equal 0
    end

    it "must be able to enqueue data" do
      list = Queue.new
      list.enqueue(1)
      list.enqueue(2)
      list.enqueue(3)
      list.enqueue(4)
      list.enqueue(5)
      list.size.must_equal 5
    end

end
