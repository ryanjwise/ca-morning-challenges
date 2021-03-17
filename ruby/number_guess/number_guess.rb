# Your game here

# Between 1 and 100
# Tells if high or low on guess
# Win on correct guess
# Limited guesses


# Generate random number
number = Random.rand(100)

# Establish max num guesses
max_guesses = 7
num_guesses = 0

#Establish loop
continue = true
while continue == true
    
    # iterates num guesses and checks not reached
    if num_guesses == max_guesses
        puts "you have reached your max number of guesses"
        continue = false
        exit 0
    end
    num_guesses += 1

    #Ask for answer
    puts "A random number has been selected between 1 and 100. This is guess #{num_guesses} after this, you will have #{max_guesses-num_guesses} remaining."
    puts "What is your guess?"
    answer = gets.to_i
    # Evaluate high or low  or correct and respond
    # puts number # For Debugging
    if answer == number
        puts "Congratulations! You have guessed the correct number!"
        # Terminate loop cleanly on correct number
        continue = false
    elsif answer > number
        puts "Your guess was too high"
    elsif answer < number
        puts "Your guess was too low"
    end

end