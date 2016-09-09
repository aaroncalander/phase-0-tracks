# Have user enter first and last name.
# Swap the first name with the last name.
# Change all of the vowels in the name to the next vowel 
# in 'aeiou' and all the consonants to the next consonant.
#
#
#
#
#
#
#

puts "Please enter your first and last name."
  input = gets.chomp.downcase
  name = input.split(' ')
  reverse_name = name.join('')
  reverse_name.tr('aeiou', 'eioua')
  reverse_name.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
  reverse_name.capitalize

def name_swap(name)
name.split.reverse.join('')
end

p name_swap('Aaron Calander')

def consonant_swap(name)
  name = []
  name.split('').map! do |letter|
  consonants = "bcdfghjklmnpqrstvwxyz"
  index = consonants.index
    if letter == consonants[consonants_index.to_i]
    letter = consonants[consonants_index + 1]
end
 +    # if letter == ("aeiou"[0])
 +    #   letter.sub!(/aeiou/, /eioua/)
 +    # end
 +    # 
 +    # 
 +    # vowels = "aeiou"
 +    # index = 0
 +    # while index < consonants.length
 +    #     if (letter == consonants[index])
 +    #       letter = consonants[index].next
 +    #   #   # elsif (name[letter] == vowels[letter]) 
 +    #   #   #   name[vowels.next] 
 +    #     end
 +    #   letter.length += 1
 +    # end
 +  end
 +end
 +
 +p next_letter("sheri bolling")