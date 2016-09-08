class Santa

  def initialize(gender, ethnicity)
  	puts "Initializing Santa instance ..."
  	@gender = gender
  	@ethnicity = ethnicity
  	@reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 'Comet', "Cupid", 'Donner', 'Blitzen']
    @age = 0
  end

  def speak
  	puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
  	puts "That was a good #{type}!"
  end
end

# Driver Code:
# bad_santa = Santa.new

# bad_santa.speak
# bad_santa.eat_milk_and_cookies('Fig Newton')

# Sample initialization code:

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

  
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  puts "There are now #{santas.length} Santas here."
end

puts "Interacting with the Santas..."
santas.each do |santa|
 santa.speak
end


