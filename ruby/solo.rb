# create space ship class
# create ship name, fuel type, fuel capacity, current fuel and velocity attributes
# create model update, fuel usage and velocity change methods
# call space ship stats in a string

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

end

armada = []

armada << SpaceShip.new("Orion", "X21", 100, 1000)

puts ' '
puts "The #{orion.ship_name}-#{orion.ship_model} uses #{orion.fuel_type.downcase}.
It holds #{orion.fuel_capacity}lbs of fuel and is #{orion.current_fuel}\% full."
puts ' '

orion.current_fuel = 80
puts "#{orion.ship_name} has #{orion.check_fuel} lbs of fuel left."