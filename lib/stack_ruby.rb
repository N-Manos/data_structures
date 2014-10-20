class Stack
  $list = Hash.new(0)
  $counter = 0
  def push (data)
    $list[$counter] = data
    $counter+=1
    puts $counter
    puts $list
  end

  def pop
    value = $list[$counter -1]
    $list.delete($counter -1)
    $counter -=1
    return value
    puts $counter
  end
end

# stack = Stack.new
# stack.push(1)
# stack.push(2)
# stack.push(3)
# puts stack.pop
# puts stack.pop
# puts stack.pop
