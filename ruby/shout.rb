module Shout
   def self.yell_angrily(words)
     words + "!!!" + " :("
   end
   def self.yelling_happily(words)
     words + "la la lala la la :)"
   end
end

# Driver Code:
p Shout.yell_angrily("What are we yelling about")
p Shout.yelling_happily("You make me so happy")