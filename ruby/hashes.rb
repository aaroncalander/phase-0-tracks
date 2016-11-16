# Ask user questions to get client details:
# client's first name, last name, age, number of children, favorite color, square
# footage, decor theme, budget
# Create hash with keys/values to store survey information.
# Convert input values to correct data type using built in String methods.
# Print hash when all questions have been answered and all keys have a value.
# Allow user to update the value of a key if entered incorrectly:
# Re-enter key and be prompted to enter new value.
# If user enters 'none' exit program.
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

client_survey = {
	first_name: first_name,
	last_name: last_name,
	age: age,
	children: children,
	color: color,
	square_feet: square_feet,
	decor_theme: decor_theme,
	budget: budget
}

p client_survey

puts "Were any of your answers incorrect (i.e. decor_theme)? If so, please enter the key value now or type 'none' to complete survey."
  answer = gets.chomp

if answer == "none"
else
	puts "Re-enter new #{answer} here:"
	new_answer = gets.chomp
	client_survey[answer.to_sym] = new_answer
end

p client_survey
