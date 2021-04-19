def isogram?(word)
  letters = word.downcase.chars
  letters.each do |letter|
    return false if letters.count(letter) > 1
  end
  return true
  # Write your code here
end
