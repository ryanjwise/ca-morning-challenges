# Write your code in here
puts "Welcome to the BMI Calculator"
puts "Please enter your weight in Kg"
weight = gets.strip.to_f 
puts "please enter your height in m"
height = gets.strip.to_f

bmi = weight / (height ** 2)

# Original solution
# puts "Your  BMI is #{bmi.round(2)}" # Round to two decimal places
# if bmi <= 24.9
#     if bmi < 18.5 
#         puts "You are in the Underweight category"
#     else 
#         puts "You are in the Normal weight category"
#     end
# end
# if bmi > 24.9
#     if bmi > 29.9 
#         puts "You are in the Obese category"
#     else 
#         puts "You are in the Overweight category"
#     end
# end

# Ed's Solution
if bmi < 18.5
    category = 'Underweight'
elsif bmi < 24.9
    category = 'Normal weight'
elsif bmi < 29.9
    category = 'Overweight'
else
    category = "Obese"
end

puts "Your BMI is #{bmi.round(2)} and your category is #{category}"


=begin
| Category       | Range                      |
|----------------|----------------------------|
| Underweight    | BMI less than 18.5         |
| Normal weight  | BMI between 18.5 and 24.9  |
| Overweight     | BMI 25.0 and 29.9          |
| Obese          | BMI greater than 30.0      |
=end