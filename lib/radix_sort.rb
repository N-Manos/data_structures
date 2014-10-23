class RadixSort

  def rsort(array)
    length = array.max.to_s.length

    length.times do |i|
      bucket = Hash.new {|h,k| h[k] = []}
      array.each do |g|
        digit = (g/10**i) % 10
        bucket[digit] << g
      end
      array = bucket.values_at(*(0..10)).compact.flatten
    end
    return array
  end
end

# sort = RadixSort.new
# test_array = [15, 2, 7, 3, 8, 14, 1, 6, 12, 9, 5, 11, 4, 10, 13]
# puts sort.rsort(test_array)
