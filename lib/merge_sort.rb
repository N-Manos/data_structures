# class MergeSort
#   def msort(list)
#     list.map! { |e| [e] }

#     while list.size > 1
#       list = list.each_slice(2) { |l,r| merge(l,r) }
#     end
#   end

#   def merge(left, right)
#     result = []
#     while left.first && right.first
#       result.push left.first <= right.first ? left.shift
#     end
#     result = left + right
#   end

# end
