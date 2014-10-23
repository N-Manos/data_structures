require_relative "./linked_list.rb"

class Queue

  $list = LinkedList.new

  def enqueue(data)
    $list.insert(data)
  end

  def dequeue
   return 'The queue is empty, dequeue failed.' if $list.size == 0
   return $list.remove($list.tail.data).data
  end

  def size
    return $list.size
  end

end

queue = Queue.new
queue.enqueue(5)
queue.enqueue(4)
queue.enqueue(3)
queue.enqueue(2)
queue.enqueue(1)
puts queue.size
puts queue.dequeue
puts queue.size
puts queue.dequeue
puts queue.size
puts queue.dequeue
puts queue.size
puts queue.dequeue
puts queue.size
puts queue.dequeue
puts queue.dequeue
puts queue.dequeue
