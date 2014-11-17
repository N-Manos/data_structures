require_relative './linked_list.rb'

# A hash table made from an array and a modified linked list.
class HashTable
  attr_reader :table
  def initialize(size = 1024)
    @table = Array.new(size)
  end

  def get(key)
    place = placement(key)
    bucket = @table[place]
    node = bucket.remove(key)
    if bucket && node
      # puts @table.to_s
      return node
    else
      return nil
    end
  end

  def set(key, value)
    fail KeyHashTableError unless key.is_a? String
    place = placement(key)
    @table[place] ||= HashLinkedList.new
    @table[place].insert(KeyValueNode.new(key, value))
  end

  def hash(key)
    key.chars.map(&:ord).reduce(:+)
  end

  def placement(str)
    hash(str) % 1024
  end
end

# A HashLinkedList that works with the hashtable
class HashLinkedList < LinkedList
  def insert(key_value_node)
    key_value_node.next = @head
    @head = key_value_node
    @tail = key_value_node if @tail.nil?
  end

  def remove(key)
    node = search(key)
    if node == @head
      @head = node.next
      node.next = nil
      return node
    end
    @prev = nil
    @current = @head
    removal_search(@prev, @current, node)
  end

  def removal_search(prev, current, node)
    until current.nil?
      if current.key == node.key
        prev.next = current.next
        current.next = nil
        @tail = prev if current == @tail
        return node
      else
        prev = current
        current = current.next
      end
    end
  end

  def search(key)
    @counter = @head
    while @counter.next != 0
      return @counter if @counter.key == key
      return "#{key} was not found in the list" if @counter.next.nil?
      @counter = @counter.next
    end
  end
end

hash = HashTable.new
# path = File.expand_path('../../american-english', __FILE__)
# counter = 0
# IO.foreach(path) do|x|
#   hash.set(x, counter)
#   counter += 1
# end
# hash.set("Aconcagua's", 3)
# puts hash.placement("Aconcagua's")
# puts hash.table[28].to_s
# puts hash.get("Aconcagua's").value

# puts hash.get("Becquerel")
# puts hash.get("Delacroix")
# puts hash.get("Februaries")
# puts hash.get("Hallstatt")
# puts hash.get("Illinois")
# puts hash.get("Jamestown")
# puts hash.get("Kaifeng")
# puts hash.get("Lederberg")
# puts hash.get("Marlborough")
# puts hash.get("Rubbermaid")
# puts hash.get("Stockhausen")
# puts hash.get("motorcycled")
# puts hash.get("riffling")
# puts hash.get("servility")
# puts hash.get("terminating")
# puts hash.get("unexceptionable")
# puts hash.get("warehousing")
