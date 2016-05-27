# Virus Predictor

# I worked on this challenge [by Alex Renner, with: Anish Gheewala].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows for the use of external files within
# a ruby document relative to the file's location. require searches
# for files in the default/given bash location. 
require_relative 'state_data'

class VirusPredictor
# setting variables when initializing a class instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# runs the predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths # (@population_density, @population, @state)
    speed_of_spread # (@population_density, @state)
  end

  private
# calculates the deaths based on population_density and rounds down to
# to nearest integer (or equal to)
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end
# calculating the speed of the virus in months
  def speed_of_spread 
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
index = 0
state_next = []

STATE_DATA.each do |state, data|

state_next << VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
state_next[index].virus_effects
index += 1
end

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# One has a string key for a data set value and the data set uses symbols
# that are equal to integers.  The require looks for a file using a directory
# location while the require_relative uses a location relative to the file
# the require_relative is in. Loops that can iterate through hashes include
# while, until, .each and for loops.  Each having their own purpouse, it depends
# on the circumstance or desired result which one is better.  With a little
# help from our guide we realized that the arguments were repetitive and
# there is no nead to feed instance variables into methods multiple times.
# When we rewrote the new class instance into a loop I felt like I had one
# of those click moments when the whole syntax and setup just made sense.