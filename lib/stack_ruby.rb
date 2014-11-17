# Stack backed by a hash table.
class Stack
  def initialize
    @list = Hash.new(0)
    @counter = 0
  end

  def push(data)
    @list[@counter] = data
    @counter += 1
  end

  def pop
    value = @list[@counter - 1]
    @list.delete(@counter - 1)
    @counter -= 1
    value
  end
end

# stack = Stack.new
# stack.push(1)
# stack.push(2)
# stack.push(3)
# puts stack.pop
# puts stack.pop
# puts stack.pop
