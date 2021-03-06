# Encrypt Method Pseudocode
# 
# Define a method that takes a string of text and advances each character of the string index by index one letter forward.
# Create a parameter that is a string of text with parameter name 'x'
# Define variable 'output' as a new string and a new variable 'index' equal to 0.
# Build a loop until index equals length of the string.
# Add to the variable output the next value of the index of 'x.'
# Add 1 to index.
# End the loop.
# Print variable output.
#
# Decrypt Method Pseudocode
#
# Define a method that takes a string of text and reverses each character by one letter in the alphabet.
# Define 'alphabet' variable that is a string of all letters in the alphabet.
# Define variable 'output' as a new string and a new variable 'index' equal to 0.
# Build a loop until index equals length of the string.
# Add to the variable output the following:
# The value of the following index of the variable alphabet
# 1 less than the index of alphabet at the following character within the string 'alphabet.'
# The index of 'y' at the variable index.
# Add 1 to index.
# End the loop.
# Print variable output.

# Coyotes Cohort Solution:

# def encrypt(x)
#   output = ""
#   index = 0
#   until index == x.length
#   	if x[index] == "z"
#       output += "a"
#       index += 1
#   	else
#   	  output += x[index].next!
#   	  index += 1
#     end
#   end
#   p output
# end

# def decrypt(y)
# 	alphabet = "bcdfghjklmnpqrstvwxyz"
# 	output = ""
# 	index = 0
# 	until index == y.length
# 		if y[index] == "a"
# 		  output += "z"
# 		  index += 1
# 	    else
# 		  output += alphabet[alphabet.index(y[index])-1]
# 		  index += 1
# 	    end
# 	end
# 	p output
# end

# encrypt("abc") 
# encrypt("zed") 
# decrypt("bcd") 
# decrypt("afe")
# decrypt(encrypt("swordfish"))

# The nested method call works because the encrypt method
# returns a valid string that can be used as an argument 
# for the decrypt method. Furthermore, because the decrypt 
# method was defined outside of the encrypt method both 
# methods could be run within the same line of code.

# Pseudocode Interface:
# Ask user if they want to encrypt or decypt
# Ask user for input (password)
# Need conditional based on input
# if encrypt, print output of encrypt method on user's input
# if decrypt, print output of decrypt method on user's input

# validresponse = false
# until validresponse == true
# puts "Welcome, agent."
# puts "Would you like to encrypt or decrypt a password?"
# puts "Enter 1 to encrypt or 2 to decrypt."
# action = gets.chomp
# 	if action == "1"
# 		puts "Please enter the password to encrypt."
# 		password = gets.chomp
# 		encrypt(password)
# 		validresponse = true
# 	elsif action == "2"
# 		puts "Please enter the password to decrypt."
# 		password = gets.chomp
# 		decrypt(password)
# 		validresponse = true
# 	else
# 		puts "That response was invalid. Please try again."
# 	end
# end

# Squirrels Cohort Solution:

def encrypt(string)
  i = 0
  new_string = ''
  while i < string.length
    if new_string.include? 'aa'
      new_string.gsub!('aa', 'a')
    end
    new_string << string[i].next 
    i += 1
  end
  p new_string
end

def decrypt(string)
  i = 0
  new_string = ''
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  while i < string.length
    new_string << alphabet[alphabet.index("a") - 1]
    i += 1
  end
  p new_string
end

puts "Greetings Secret Agent. Would you like to encrypt or decrypt your password today? Please type 'encrypt' or 'decrypt' now."
answer = gets.chomp

if answer == 'encrypt'
  puts 'Enter the password you would like to encrypt:'
  password = gets.chomp
  encrypt(password)
else answer == 'decrypt'
  puts 'Enter the password you would like to decrypt:'
  password = gets.chomp
  decrypt(password)
end