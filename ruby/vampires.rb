puts 'How many employees will be processed?'
employees = gets.chomp.to_i

while employees >= 1
  employees -= 1

  puts 'What is your name?'
  name = gets.chomp.downcase
  puts 'How old are you?'
  age = gets.chomp.to_i
  puts 'What year were you born?'
  year = gets.chomp.to_i
  puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
  garlic = gets.chomp.downcase
  puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp.downcase
  puts "Name your allergies. Enter them one at a time and type 'done' when finished."
  allergies = gets.chomp.downcase
    
  until allergies == 'sunshine' || allergies == 'done'
    puts "Name your allergies. Enter them one at a time and type
    'done' when finished."
    allergies = gets.chomp.downcase
  end
  
  if allergies == 'sunshine'
    puts 'Probably a vampire.'
    next
  end

  if year + age == 2016
    correct_age = true
  else
    correct_age = false
  end

  if correct_age == true && garlic == 'yes' || insurance == 'yes'
    result = 'Probably not a vampire.'
  elsif !correct_age == true && garlic == 'yes' || insurance == 'yes'
    result = 'Probably a vampire.'
  elsif !correct_age == true && garlic == 'no' && insurance == 'no'
    result = 'Almost certainly a vampire.'
  elsif name == 'drake cula' || name == 'tu fang'
    result = 'Definitely a vampire.'
  else
    result = 'Results inconclusive.'
  end
    puts result
  end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
