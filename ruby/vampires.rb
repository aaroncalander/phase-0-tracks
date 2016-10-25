puts 'How many employees will be processed?'
  employees = gets.chomp.to_i

loop do
  puts 'What is your name?'
    name = gets.chomp
  puts 'How old are you?'
    age = gets.chomp.to_i
  puts 'What year were you born?'
    year = gets.chomp.to_i
  puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
    garlic = gets.chomp
  puts "Would you like to enroll in the company's health insurance?"
    insurance = gets.chomp
  puts "Name your allergies. Enter them one at a time and type 'done' when finished."
    allergies = gets.chomp
    
until allergies == "sunshine" || allergies == "done"
  puts "Name your allergies. Enter them one at a time and type 'done' when finished."
    allergies = gets.chomp
end
  
if allergies == "sunshine"
  puts "Probably a vampire."
  break
end

if year + age == 2016
  correct_age = true
else
  correct_age = false
end

if correct_age && (garlic == 'Yes' || insurance == 'Yes')
  result = 'Probably not a vampire.'
elsif correct_age && (garlic == 'Yes' || insurance == 'Yes')
  result = 'Probably a vampire.'
elsif correct_age || (garlic == 'No' && insurance == 'No')
  result = 'Almost certainly a vampire.'
elsif name == 'Drake Cula' || name == 'Tu Fang'
  result = 'Definitely a vampire.'
else
  result = 'Results inconclusive.'
end

p result
employees -= 1

if employees == 0
    break
  end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."