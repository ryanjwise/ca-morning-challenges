 # Write your code here
def palindrome?(string)
  string = string.strip.downcase.split(' ').join.gsub(/[[:punct:]]/, '')
  string == string.reverse
end

puts palindrome?('Was it a car or a cat I saw?')