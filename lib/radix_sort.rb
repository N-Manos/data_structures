class RadixSort

  def rsort(array)
    @highest_number_of_digits = 0
    @bucket = Array.new(10) { Array.new()}
    #puts @bucket.to_s
    @sort_array = array.collect do |num|
      digits_to_array(num)
    end

    @sort_array.each do |times|
      # puts @sort_array.to_s
      # puts times
      length = times.length
      @highest_number_of_digits = length if length > @highest_number_of_digits
    end

    #@highest_number_of_digits -= 1
    #puts @highest_number_of_digits
    #puts @sort_array.to_s
    @highest_number_of_digits.times do |digit|
      #puts digit
      @sort_array.each do |number_as_array|

        #puts number_as_array[digit]
        #@bucket_index = number_as_array[digit]
        number_as_array[digit] == nil ? @bucket_index = 0 :
                                        @bucket_index = number_as_array[digit]

        #puts @bucket[bucket_index].to_s
        next if @bucket_index == nil
        @bucket[@bucket_index].push(number_as_array)
        #puts number_as_array.to_s
        #puts @bucket.to_s

      end
      @bucket = @loop_bucket
    end
    @bucket.each { |e| e.each {|i| i.reverse!.join.to_i}}
    @bucket.to_s
  end

  def destribute (array)
    array.each_index do |i|
      array[i].each do |j]|
        @bucket = j
      end
    end
  end
  #converts the numbers to be sorted into arrays with the digits reversed
  def digits_to_array(d)
    digits = []
    while d > 0
      digits << d % 10
      d /= 10
    end
    digits #.reverse! would flip the digits into the correct order
  end

end


array = (1..15).to_a.shuffle
sort = RadixSort.new

puts sort.rsort(array)
