# Standalone module:

# module Shout
#    def self.yell_angrily(words)
#      words + "!!!" + " :("
#    end
#    def self.yelling_happily(words)
#      words + "la la lala la la." + ":)"
#    end
# end

# Driver Code:
# p Shout.yell_angrily("What are we yelling about")
# p Shout.yelling_happily("You make me so happy")

# Mixin module:
# (doesn't use keyword 'self,' also requires 'include' and name of module)

module Shout
  def yell_angrily(words)
  	words + "!!!" + ":("
  end

  def yelling_happily(words)
  	words + " la la lala la la." + ":)"
  end
end

class Man
  include Shout
end

class Woman
  include Shout
end

# Driver Code:
Adam = Man.new
p Adam.yell_angrily("Let me eat the apple")
p Adam.yelling_happily("I can't hear you snake")

Eve = Woman.new
p Eve.yell_angrily("Don't touch that apple")
p Eve.yelling_happily("I'm standing right here Adam")