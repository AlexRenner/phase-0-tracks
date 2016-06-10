class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa..."
		@gender = gender
		@ethnicity = ethnicity
		@age = rand(140)
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

	# def age_check
	# 	p @age
	# end

	# def ethnicity_check
	# 	p @ethnicity
	# end
end

santa_array = []

# santa_test = Santa.new(genders[3], ethnicities[0])
# santa_array << santa_test

# santa_test.speak
# santa_test.eat_milk_and_cookies("no bake")
# 187.times { santa_test.celebrate_birthday }
# santa_test.get_mad_at("Vixen")
# p santa_test.age
# p santa_test.ethnicity
# santa_test.ethnicity = "couch"

def santa_generator(array)
	genders = ["agender", "female", "bigender", "male"]
	ethnicities = ["black", "latino", "white", "asian",
		"indian", "middle-eastern", "part dragon"]
	array << Santa.new(genders.sample, ethnicities.sample)
end

10.times {santa_generator(santa_array)}

p santa_array