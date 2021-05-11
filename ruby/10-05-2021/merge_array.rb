def with_our_powers_combined(array1, array2)
  captain_planet = []
  length = array1.length >= array2.length ? array1.length : array2.length
  length.times do |i|
    captain_planet << array1[i] unless array1.at(i) == nil
    captain_planet << array2[i] unless array2.at(i) == nil
  end
  captain_planet
end
