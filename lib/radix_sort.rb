class RadixSort

  def rsort(array)
    @highest_number_of_digits = 0
    @bucket = Array.new(10) { Array.new()}
    #puts @bucket.to_s
    @sort_array = array.collect do |num|
      digits_to_array(num)
    end

    set_number_of_repititions

    fill_bucket
    #puts @bucket.to_s

    @highest_number_of_digits.times do |digit|

    #   @sort_array.each do |number_as_array|


    #     number_as_array[digit] == nil ? @bucket_index = 0 :
    #                                     @bucket_index = number_as_array[digit]

    #     next if @bucket_index == nil
    #     @bucket[@bucket_index].push(number_as_array)

    #   end
     end
    # @bucket.each { |e| e.each {|i| i.reverse!.join.to_i}}
    # @bucket.to_s
  end

  def set_number_of_repititions
    @sort_array.each do |times|
      # puts @sort_array.to_s
      # puts times
      length = times.length
      @highest_number_of_digits = length if length > @highest_number_of_digits
    end
    @highest_number_of_digits -=1
  end

  def fill_bucket
    @sort_array.each do |number_as_array|
        number_as_array[0] == nil ? @bucket_index = 0 :
                                    @bucket_index = number_as_array[0]
        next if @bucket_index == nil
        @bucket[@bucket_index].push(number_as_array)
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

#puts sort.rsort(array)
