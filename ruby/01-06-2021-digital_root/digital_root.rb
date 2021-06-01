#write your code here
def digital_root(num)
  return -1 if num.class != Integer
  return -1 if num.negative?

  numbers = num.digits.sum
  numbers = digital_root(numbers) if numbers >= 10
  numbers
end
