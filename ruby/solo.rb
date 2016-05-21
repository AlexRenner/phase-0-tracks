# create space ship class
# create ship name, fuel type, fuel capacity, current fuel and velocity attributes
# create model update, fuel usage and velocity change methods
# call space ship stats in a string
puts "How many ships would you like to register?"
ships = gets.chomp.to_i

class SpaceShip
	attr_reader :ship_name, :fuel_type, :fuel_capacity
	attr_accessor :ship_model, :current_fuel, :velocity

	def initialize(name, model, fuel, capacity)
		@ship_name = name
		@ship_model = model
		@fuel_type = "Combustables"
		@fuel_capacity = capacity
		@current_fuel = fuel
		@velocity = 0
	end

	def change_velocity(velocity, usage)
		@velocity = velocity
		@current_fuel = @current_fuel - usage
	end

	def check_fuel
		fuel_level = @fuel_capacity * (@current_fuel.to_f * 0.01)
	end

	def speed_change(speed)
		@velocity = speed
	end

end

armada = []

armada << SpaceShip.new("Orion", "X21", 100, 1000)

ships.times do 
	puts "What is the ships name?"
	name = gets.chomp
	puts ' '

	puts "What is its model number?"
	model = gets.chomp
	puts ' '

	puts "What is its fuel level? (0-100)"
	fuel = gets.chomp.to_i
	puts ' '

	puts "How many gallons of fuel can it hold?"
	capacity = gets.chomp.to_i
	puts ' '

	armada << SpaceShip.new(name, model, fuel, capacity)
end

puts ' '

armada[0].current_fuel = 80
puts "#{armada[0].ship_name} has #{armada[0].check_fuel} lbs of fuel left."

puts ' '

armada.each { |ship|
puts "The #{ship.ship_name}-#{ship.ship_model} uses #{ship.fuel_type.downcase}.
It holds #{ship.fuel_capacity}lbs of fuel and is #{ship.current_fuel}\% full."
}

puts ' '
