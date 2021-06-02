// Fizz - Divisible by 3 or contains the digit 3
// Buzz - Divisible by 5 or contains the digit 5
// Quack - Divisible by 7 or contains the digit 7

// As a bonus implement your method to include Prime if that number is a prime and Squared if that number is a perfect square.
// Perfect square is a number that can be expressed as a product of two integers multiplied together. e.g 9 is a perfect squared as it is 3 * 3, 16 is a perfect square as it is 4 * 4.

// Conditions:

// Prime - If number is prime
// Squared - If number is perfect square

function fizzBuzzQuack(num){
  if (num == 0 ) return num
  const digits = num.toString().split('').map(Number) 
  let retStr = ""

  const isprime = (num) => {
    for(var i = 2; i < num; i++) {
      if(num % i === 0) {
          return false;
      }
    }
    return true;
  }

  if (num % 3 == 0 || digits.includes(3)) {
    retStr += "Fizz "
  }
  if (num % 5 == 0 || digits.includes(5)) {
    retStr += "Buzz "
  }
  if (num % 7 == 0 || digits.includes(7)) {
    retStr += "Quack "
  }  
  if (isprime(num)) {
    retStr += "Prime "
  }
  if (Math.sqrt(num) == Math.floor(Math.sqrt(num))) {
    retStr += "Squared "
  }
  if (retStr) {
    return retStr.trim()
  } else {
    return num
  }
}

module.exports = {
	fizzBuzzQuack
}
