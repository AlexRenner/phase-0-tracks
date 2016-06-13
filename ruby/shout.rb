# module Shout

#   def self.yell_angrily(words)
#     p words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	p words + "! Yay!"
#   end

# end

# Shout.yell_happily("What?")
# Shout.yell_angrily("What?")

module Shout

  def yell_angrily(words)
    p words + "!!!" + " :("
  end

  def yell_happily(words)
  	p words + "! Yay!"
  end

end

class SportsFan
	include Shout
end

class Friend
	include Shout
end

student = SportsFan.new
john = Friend.new

student.yell_happily("What?")
student.yell_angrily("Why?")

john.yell_happily("Seriously?")
john.yell_angrily("Since when?")