require_relative './linked_list.rb'

# path = File.expand_path("../../american-english", __FILE__)
# counter = 0
# IO.foreach(path) {|x|
#   puts x
#   counter +=1
# }
# puts counter

class HashTable
  def initialize(_size)
  end

  def get(_key)
  end

  def set(_key, _value)
  end

  def hash(key)
    arr = key.split ''
    arr.each do |i|
      count += i.ord
    end
  end
end

arr = 'key'.split ''
count = 0
arr.each do |i|
  count += i.ord
end
puts count
a = 'k'.ord
b = 'e'.ord
c = 'y'.ord
puts a + b + c
