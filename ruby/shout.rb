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

happy = Person.new
p happy.yelling_happily("I won!")

angry = Person.new
p angry.yell_angrily("What is going on?")