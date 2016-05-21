class Santa
	def initialize(name)
		puts "Initializing Santa instance!"
		@name = name
	end

	def speak
		puts "Ho, ho, ho! Haaaapy Holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end
end