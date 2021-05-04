def larger_than_life(array)
  return_arr = []
  unless array.empty? array.each_with_index do |number, index|
    return_arr << number if evaluate_number(number, index, array)
  end
  return_arr
end

def evaluate_number(evaluated_num, index, array)
  larger = true
  array.each_with_index do |num, sub_index|
    next if index >= sub_index
    if evaluated_num < num
      return false
    end
  end
  larger
end
