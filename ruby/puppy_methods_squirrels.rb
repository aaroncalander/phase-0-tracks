# RELEASE 0 AND 1:

class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
  end

  def speak(int)
  	i = 0
  	while i < int
  	  puts "Woof!"
  	  i += 1
  	end
  end

  def roll_over
	puts "*rolls over*"
  end

  def dog_years(human_years)
  	age = human_years * 7
  	puts age
  end

  def attack(name)
  	puts "Nevermind, I'd rather just sleep."
  end
end

# Driver Code:

puppy = Puppy.new
puppy.fetch('ball')
puppy.speak(4)
puppy.roll_over
puppy.dog_years(7)
puppy.attack("Chris")

# RELEASE 2:

class Cat

  def initialize
	puts "I'm the new cat on the block!"
  end

  def play(toy)
	puts "I attacked the #{toy}."
  end

  def sleep(hours)
	puts "The cat slept #{hours} hours, but is still tired."
  end

  def speak(int)
	puts "Meow!" * int
  end
end

# Driver Code:

kitty = Cat.new
kitty.play('feather')
kitty.sleep(5)
kitty.speak(8)

cat_array = []

50.times do 
  cat_array << Cat.new
end

p cat_array

cat_array.each do |kittens|
	kittens.play("bird toy")
	kittens.sleep(3)
	kittens.speak(6)
end