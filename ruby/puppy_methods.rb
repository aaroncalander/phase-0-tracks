class Puppy

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