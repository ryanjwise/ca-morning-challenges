def isogram?(word)
  isogram = true
  letters = word.downcase.chars
  letters.each do | letter |
    return false if letters.count(letter) > 1
  end
  isogram
  # Write your code here
end