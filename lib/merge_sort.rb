# Merge sort algorithim that extends the Array class
class Array
  def msort
    if size <= 1
      self
    else
      left, right = (self / 2).map(&:sort)
      left.merge right
    end
  end

  def /(other)
    middle = size / other
    [self[0...middle], self[middle..-1]]
  end

  def merge(arr)
    result = []
    while any? && arr.any?
      if first <= arr.first
        result << shift
      else
        result << arr.shift
      end
    end
    result.concat(self).concat(arr)
  end
end
