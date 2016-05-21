# create space ship class
# create ship name, fuel type, fuel capacity, current fuel and velocity attributes
# create model update, fuel usage and velocity change methods
# call space ship stats in a string

class SpaceShip
	attr_reader :ship_name, :fuel_type, :fuel_capacity
	attr_accessor :ship_model, :current_fuel, :velocity

	def initialize(model, fuel, capacity)
		@ship_name = "Orion"
		@ship_model = model
		@fuel_type = "Combustables"
		@fuel_capacity = capacity
		@current_fuel = fuel
		@velocity = 0
	end
end