# module Shout
	
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!" + " Yipeeee! :-)"
# 	end

# end

# p Shout.yelling_happily("I won!")

# p Shout.yell_angrily("What is going on?")

module Shout
	
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!" + " Yipeeee! :-)"
	end

end

class Person
	include Shout
end

class ConfusedPersons
	include Shout
end

happy = Person.new
p happy.yelling_happily("I won!")
p happy.yell_angrily("Why am I excited?")

confused = ConfusedPerson.new
p confused.yell_angrily("What is going on?")
p confused.yelling_happily("Not sure what's going on but it's fun")