puts "Hamster Name?"
name = gets.chomp
volumeLevel = 0
until (volumeLevel >=1 && volumeLevel <=10)
	puts "Please Input Volume Level from 1 to 10"
	volumeLevel = gets.chomp.to_i
end
puts "Fur Color"
color = gets.chomp

puts "Is The Hamster a good candidate for adoption? Yes or No?"
candidate = gets.chomp
if candidate.downcase == "yes"
	candidateBool = true
else candidateBool = false
end


puts "Estimated Age of Hamster"
age = gets.chomp.to_f
if age == 0.0
	age = nil
end


puts "Hamster Name: #{name}"
if age == nil
	puts "Age: Nil"
else
puts "Age: #{age}"
end
puts "Volume Level: #{volumeLevel}"
puts "Fur Color: #{color}"
puts "Good Candidate: #{candidateBool}"