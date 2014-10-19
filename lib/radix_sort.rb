class RadixSort ()
  @highest_digit = 0
  def rsort(array)
    highest_digits(array).times

  end

  def highest_digits (array)
    array.each { |i|
      @highest_digit = i if i > @highest_digit
    }
  end
end


array = (1..100).to_a.shuffle
sort = RadixSort.new

puts sort.rsort(array)
