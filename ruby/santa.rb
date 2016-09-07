class Santa
  
  def speak
  	puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(type)
  	puts "That was a good #{type}!"
  end

  def initialize
  	puts "Initializing Santa instance ..."
  end
end

# Driver Code:
bad_santa = Santa.new

bad_santa.speak
bad_santa.eat_milk_and_cookies('Fig Newton')
