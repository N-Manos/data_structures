# A recursive quicksort implementation
class QuickSort
  def qsort(array, left, right)
    if left < right
      q = partition(array, left, right)
      qsort(array, left, q - 1)
      qsort(array, q + 1, right)
    end
  end

  def partition(array, left, right)
    pivot = array[right]
    i = left - 1
    left.upto(right - 1) do |k|
      if array[k] <= pivot
        i += 1
        array[i], array[k] = array[k], array[i]
      end
    end
    array[i + 1], array[right] = array[right], array[i + 1]
    i += 1
  end
end

# Testing it out

# sort = QuickSort.new
# arr = (1..10000).to_a.shuffle
# sort.qsort(arr, 0, arr.length-1)
# puts arr.to_s
