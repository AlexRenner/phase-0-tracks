# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative uses a file with a directory location relative
# to the program trying to access it.
# require uses a full directory address

require_relative 'state_data'

class VirusPredictor
  # applies data to the class instance upon creation (initialization)
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calls on both predicted deaths and speed of spread instance
  # methods 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  def self.all_fifty
    STATE_DATA.each do |state, data|
      state = VirusPredictor.new(state, data[:population_density], data[:population])
      state.virus_effects
    end
  end

  private
  # uses hash data from state_data to compute predicted deaths
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
  # uses hash data from state_data to compute speed of spread
  def speed_of_spread #in months
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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

VirusPredictor.all_fifty
#=======================================================================
# Reflection Section

# The main difference between the two syntaxes that I see is that the string to hash
# pair uses => while the value hash uses : which out creates a symbol for the key

# require_relative uses a file in relation to a program's location while require uses
# a directory address

# hashes can be iterated through with a variety of methods including .each and .map
# and can also be iterated through in check methods like .has_key? or .has_value? 
# to revieve a boolean output

# the variables were all instance variables so there was no need to pass them into
# the methods since their scope allowed them to be accessed anywhere whithin 
# the class instance

# I was unclear about scope and its definition. I understand the use of scope in 
# practice (usually hehe) but I have always had issues with the terminology and wording my
# thoughts in a way that is coherent to everyone else as I tend to missuse words
# and terms.  Work in progress!