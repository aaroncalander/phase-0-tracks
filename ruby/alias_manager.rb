# Pseudocode:

# Have user enter first and last name.
# Downcase characters to handle user input.
# Swap the first name with the last name.
# Change all of the vowels in the name to the next vowel in alphabet.
# Change all the consonants to the next consonant in the alphabet.

def name_swap(name)
  reverse_name = name.downcase.split.reverse.join(' ')
  vowel_swap = reverse_name.tr!('aeiou', 'eioua')
  consonant_swap = vowel_swap.tr!('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyz').split
  final_alias = consonant_swap.map(&:capitalize).join(' ')
end

alias_array = []
spy_name = ''
until spy_name == 'quit'
  puts "Greetings spy. Please enter your first and last name and we will provide a fake name. Enter 'quit' when you are ready to exit."
  spy_name = gets.chomp
  
  if spy_name == 'quit'
  puts "Thank you and be safe!"
  next
  end
  alias_array << spy_name
  p name_swap(spy_name)
end

alias_array.each do |name|
  p "#{name} is also known as #{name_swap(name)}."
end