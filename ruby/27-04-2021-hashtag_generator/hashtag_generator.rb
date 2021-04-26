def hashtag_generator(string)
  return false if string == ''

  array = string.split(' ')
  array.unshift('#')
  # array.map! { &:capitalize }
  array.map! do |word|
    characters = word.chars
    characters[0] = characters[0].upcase
    characters.join
  end
  return_string = array.join
  return false if return_string.length > 140

  return_string
end

hashtag_generator('test string')