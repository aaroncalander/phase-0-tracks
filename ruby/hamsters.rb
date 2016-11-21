puts "what is the hamster's name?"
hamster_name = gets.chomp
puts "enter the hamster's volume level from 1-10"
volume_level = gets.chomp.to_i
puts "what is the hamster's fur color?"
fur_color = gets.chomp
puts "it's a good candidate for adoption? (yes/no)"
adoptable = gets.chomp
if adoptable == "yes"
	adoptable = true
else adoptable = false	
end
puts "what is the estimated age?"
age = gets.chomp.to_i
if age == ""
		age = nil
end 
 
puts "Hamster #{hamster_name} was checked in today."
puts "We estimate it's age to be #{age}."
puts "We'd rate it a #{volume_level} out of 10 for loudness."
puts "The coat on this furry beast is #{fur_color}."
puts "Good candidate for adoption: #{adoptable}"
