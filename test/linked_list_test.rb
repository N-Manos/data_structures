require 'minitest'
require 'minitest/autorun'

require 'linked_list.rb'


  describe "a linked list that can store data" do

    it "must be able to insert nodes with data" do
      list = LinkedList.new
      list.insert(1)
      list.search(1).data.must_equal 1
    end

    it "must be able to search for data that has been inserted" do
      list = LinkedList.new
      list.insert('two')
      list.insert(3)
      list.search('two').data.must_equal 'two'
      list.search(3).data.must_equal 3
    end

    it "must be able to check the size of the list" do
      list = LinkedList.new
      list.insert(1)
      list.size.must_equal 1
      list.insert('two')
      list.size.must_equal 2
      list.insert(3)
      list.size.must_equal 3
    end

    it "must be able to remove nodes" do
      list = LinkedList.new
      list.insert(1)
      list.insert('two')
      list.insert(3)
      list.size.must_equal 3
      list.remove('two')
      list.size.must_equal 2
      list.search('two').must_equal "two was not found in the list"
    end

    it "must be able to display list data with to_s" do
      list = LinkedList.new
      list.insert(1)
      list.insert('two')
      list.insert(3)
      list.insert('four')
      list.insert(:five)
      list.to_s.must_equal 'five, four, 3, two, 1'
    end

end

