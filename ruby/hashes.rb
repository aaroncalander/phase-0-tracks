# Pseudocode:

# Ask user questions to get client details.
# Convert input values to correct data type using built in String methods.
# Create client_survey hash with keys and values equal to input.
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
puts "Is the client married? Enter 'yes' or 'no.'"
  married = gets.chomp.downcase
puts "What is the client's favorite color?"
  color = gets.chomp
puts "How many square feet does client have in living space?"
  square_feet = gets.chomp.to_i
puts "What is the decor theme?"
  decor_theme = gets.chomp
puts "What is the budget for the project? Enter number without '$.'"
  budget = gets.chomp.to_i

client_survey = {
	first_name: first_name,
	last_name: last_name,
	age: age,
	children: children,
	married: married,
	color: color,
	square_feet: square_feet,
	decor_theme: decor_theme,
	budget: budget
}

 if married == "yes"
    client_survey[:married] = true
  else
    client_survey[:married] = false
  end
  
p client_survey

puts ""
puts "Were any of your answers incorrect (i.e. decor_theme)? If so, please enter the key value now or type 'none' to complete survey."
  answer = gets.chomp

if answer == "none"
  client_survey
else
	puts "Update input for #{answer} here:"
	new_answer = gets.chomp
	client_survey[answer.to_sym] = new_answer
end

p client_survey