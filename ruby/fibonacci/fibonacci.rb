class NonPositiveNumberError < StandardError
  def initialize(msg = "Number is not positive")
    super()
  end
end

def fibonacci(count)
  # Start counting...
  arr = [0, 1]
  raise NonPositiveNumberError unless count.is_a?(Numeric) && count.positive?
  if count <= arr.length
    return arr[count]
  else
    (count-1).times { arr << next_sequence(arr) }
  end
  return arr.last
end

def next_sequence(arr)
  # pp arr # Toggle on to see array build process
  last = arr[-1]
  second_last = arr[-2]
  last + second_last
end

# puts fibonacci(1)
# puts fibonacci(7)
