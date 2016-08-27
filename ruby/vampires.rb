puts "What is your name?"
  name = gets.chomp
puts "How old are you?"
  age = gets.chomp.to_i
puts "What year were you born"
  year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp

if garlic == "Yes"
  garlic_result = true
else
  garlic_result = false
end

if insurance == "Yes"
  insurance_result = true
else
  insurance_result = false
end

if year + age == 2016
  correct_age = true
else
  correct_age = false
end

if (correct_age && (garlic_result || insurance_result)) == true 
  result = 'Probably not a vampire.'
end

if (correct_age && (garlic_result || insurance_result)) == false
  result = 'Probably a vampire.'
end

if (correct_age && (garlic_result && insurance_result)) == false
  result = "Almost certainly a vampire."
end

if name == "Drake Cula" || name == "Tu Fang"
  result = 'Definitely a vampire.'
else
  result = 'Results inconclusive.'
end

p result