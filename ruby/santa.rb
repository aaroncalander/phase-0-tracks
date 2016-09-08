class Santa

  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
  	puts "Initializing Santa instance ..."
  	@gender = gender
  	@ethnicity = ethnicity
  	@reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 'Comet', "Cupid", 'Donner', 'Blitzen']
    @age = 0
    puts "I am a #{gender} #{ethnicity} Santa."
  end

  def speak
  	puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
  	puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday(age)
  	age += 1
  	p age
  end

  def get_mad_at(reindeer)
  	@reindeer_ranking.delete(reindeer)
  	@reindeer_ranking.push(reindeer)
  end
end
# getter methods
  # def age
  	# @age
  # end

  # def ethnicity
  	# @ethnicity
  # end
  
# setter methods
  # def gender=(new_gender)
	# @gender = new_gender
  # end

# Driver Code (Release 0):
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

# Driver Code (Release 1): 
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


# example_genders.length.times do |i|
  # santas << Santa.new(example_genders[i], example_ethnicities[i])
   # puts "There are now #{santas.length} Santas here."
# end

# puts "Interacting with the Santas..."
# santas.each do |santa|
 # santa.speak
# end

# Driver Code (Release 2 and 3):
first_santa = Santa.new("male", "white")
first_santa.celebrate_birthday(80)
first_santa.eat_milk_and_cookies("chocolate chip cookie")
first_santa.get_mad_at("Vixen")
first_santa.gender = "female"
puts "I am a #{first_santa.gender} Santa."
