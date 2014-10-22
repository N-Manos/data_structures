class LinkedList

  @head = nil

  def insert(data)
    node = Node.new(data)
    node.next = @head
    @head = node
  end

  def search(val)
    @counter = @head
    while @counter.next != 0 do
      return @counter if @counter.data == val
      return "#{val} was not found in the list" if @counter.next == nil
      @counter = @counter.next
    end

  end

  def size
    return 0 if @head == nil
    @node = @head
    size = 0
    while @node.next != 0 do
      return size + 1 if @node.next == nil
      @node = @node.next
      size += 1
    end
    return size
  end

  def remove(node)
    node = self.search(node)
    if node == @head
      @head = node.next
      node.next = nil
      return ''
    end
    @prev = nil
    @current = @head
    while @current != nil do
      if @current.data == node.data
        @prev.next = @current.next
        @current.next = nil
        return ''
      else
        @prev = @current
        @current = @current.next
      end

    end

  end

  def to_s
    @node = @head
    @list = ''
    while @node.next != nil do
      @list = @list + "#{@node.data}, "
      @node = @node.next
    end
    @list = @list + "#{@node.data}"
    return @list
  end

  class Node

    def initialize(data)
      @data = data
      @next = 0
    end

    attr_accessor :next
    attr_accessor :data
  end

end

# list = LinkedList.new
# list.insert('one')
# list.insert(:two)
# list.insert(3)
# list.insert('four')
# list.insert(5)
# puts ''
# puts ''
# puts 'LinkedList to_s test: '
# puts list.to_s
# puts ''
# puts 'LinkedList search for string test (looking for "one": '
# puts list.search('one').data
# puts 'LinkedList search for symbol test (looking for "two": '
# puts list.search(:two).data
# puts 'LinkedList search for integer test (looking for "3": '
# puts list.search(3).data
# puts ''
# puts 'LinkedList size test (should be 5): '
# puts list.size
# puts ''
# puts 'LinkedList delete test: '
# puts ''
# list.remove('one')
# list.remove(5)
# puts 'Removed one and 5 (list should have "two", 3, and "four"): '
# puts list.search('one')
# puts list.search(:two).data
# puts list.search(3).data
# puts list.search('four').data
# puts list.search(5)


