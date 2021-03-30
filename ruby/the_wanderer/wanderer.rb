def delete_items(array, opposite, current_index)
  opposite_index = array.find_index(opposite)
  array.delete_at(opposite_index)
  array.delete_at(current_index)
  array
end

def direction_saver(travelers_path)
  # A journey of a thousand miles begins with a single step...

  pp travelers_path
  puts "---"
  travelers_path.each_with_index do |direction, index|
    case direction
    when 'NORTH'
      opposite = 'SOUTH'
      if travelers_path.include?(opposite)
        delete_items(travelers_path, opposite, index)
      end
    when 'EAST'
      opposite = 'WEST'
      if travelers_path.include?(opposite)
        delete_items(travelers_path, opposite, index)
      end
    when 'SOUTH'
      opposite = 'NORTH'
      if travelers_path.include?(opposite)
        delete_items(travelers_path, opposite, index)
      end
    when 'WEST'
      opposite = 'EAST'
      if travelers_path.include?(opposite)
        delete_items(travelers_path, opposite, index)
      end
    end
    puts "---"
  end
  travelers_path
end

pp direction_saver(['NORTH', 'SOUTH', 'SOUTH', 'WEST'])
puts
puts "-------------------"
puts
pp direction_saver(['NORTH', 'SOUTH', 'EAST', 'WEST', 'NORTH', 'NORTH', 'SOUTH', 'EAST', 'WEST', 'NORTH'])