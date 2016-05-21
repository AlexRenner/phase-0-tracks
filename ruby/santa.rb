class Santa
	attr_reader :name, :age, :ethnicity
	attr_accessor :age
	def initialize(name, gender, ethnicity)
		puts "Initializing Santa instance!"
		@name = name
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
		puts "Ho, ho, ho! Haaaapy Holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking[-1] = reindeer
		p @reindeer_ranking
	end
end

example_genders = [
	"agender", "female", "bigender",
	"male", "female", "gender fluid", "N/A"
]
example_ethnicities = [
	"black", "Latino", "white",
	"Japanese-African", "prefer not to say",
	"Mystical Creature (unicorn)", "N/A"
]

santas = []
santas << Santa.new("Alex", "male", "white")
santas << Santa.new("Sophie", "female", "black")

p santas

santas[0].get_mad_at("Vixen")
29.times { santas[0].celebrate_birthday }
santas[1].age = 27

puts "Santa #{santas[0].name} is #{santas[0].age} years old and #{santas[0].ethnicity}!"
puts "Santa #{santas[1].name} is #{santas[1].age} years old and #{santas[1].ethnicity}!"

times = 1

10.times do
	times += 1
	santas << Santa.new("Santa#{times}", example_genders.sample, example_ethnicities.sample)
end

p santas