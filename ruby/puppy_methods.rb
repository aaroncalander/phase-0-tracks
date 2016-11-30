class Puppy

  def initialize
    puts 'Initializing new puppy instance...'
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
# Additional methods:
  def speak(int)
  	puts 'Woof!' * int
  end

  def roll_over
  	puts '*rolls over*'
  end

  def dog_years(int)
  	puts int * 7
  end

  def attack(name)
  	puts "I would rather just lick #{name}."
  end
end

# Driver Code:
lucky = Puppy.new

lucky.fetch('ball')
lucky.speak(5)
lucky.roll_over
lucky.dog_years(7)
lucky.attack('Aaron')

# Design a new class with an initialize method and at least 2 other methods.

class Coder
  
   def initialize
    puts "You are now becoming a coder..."  
  end
  
  def learn(language)
  	puts "This week I'm going to learn #{language}."
  end

  def caffeinate(cups)
  	puts 'Give me coffee!' * cups
  end

  def coding(hours)
  	puts "I only have #{hours} hours left before sleepy time."
  end
end

Aaron = Coder.new

Aaron.learn('html')
Aaron.caffeinate(6)
Aaron.coding(10)

coder_array = []

i = 0
until i == 50
  coder_array << Aaron
  i += 1
end

p coder_array

coder_array.each do |method|
  Aaron.learn('Ruby')
  Aaron.caffeinate(3)
  Aaron.coding(12)
end
