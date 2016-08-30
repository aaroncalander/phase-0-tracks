# Ask user for client detail input:
# client's first name, last name, age, number of children, favorite color, square
# footage, decor theme, budget, has money(true or false)
# Create hash with keys/values to store client information.
# Convert input to correct data type.
# Print hash when all questions have been answered.
# Allow user to update a key if entered incorrectly:
# use .to_sym method to allow this.
# Print updated version of hash.
# Exit the program.

puts "What is the client's first name?"
  first_name = gets.chomp
puts "What is the client's last name?"
  last_name = gets.chomp
puts "What is the client's age?"
  age = gets.chomp.to_i
puts "How many children does the client have?"
  children = gets.chomp.to_i
puts "What is the client's favorite color?"
  color = gets.chomp
puts "How many square feet does client have in living space?"
  square_feet = gets.chomp.to_i
puts "What is the decor theme?"
  decor_theme = gets.chomp
puts "What is the budget for the project?"
  budget = gets.chomp.to_i
puts "Is the client ready to deposit money?"
  money = gets.chomp.to_bool