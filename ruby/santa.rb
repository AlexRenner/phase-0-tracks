class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = [
			"Rudolph", "Dasher", "Dancer",
			"Prancer", "Vixen", "Comet",
			"Cupid", "Donner", "Blitzen"
		]
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking[-1] = reindeer
	end
end

santa_array = []
genders = ["agender", "female", "bigender", "male"]
ethnicities = ["black", "latino", "white", "asian",
	"indian", "middle-eastern", "part dragon"]

santa1 = Santa.new(genders[0], ethnicities[0])
santa_array << santa1

santa1.speak
santa1.eat_milk_and_cookies("no bake")

p santa_array