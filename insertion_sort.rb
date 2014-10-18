class InsertionSort

  def isort (array)
    for size in 2..array.length
      element = array[size-1]
      dex = size - 2
      while(dex >= 0) && (element < array[dex])
        array[dex + 1] = array[dex]
        dex-=1
      end
      array[dex+1] = element
    end
  end

end
