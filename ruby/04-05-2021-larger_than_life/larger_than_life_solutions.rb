def larger_than_life(array)
  answer = []
  (array.length).times do
      answer << array[0] if array[0] == array.max
      array.shift
  end
  answer.uniq
end