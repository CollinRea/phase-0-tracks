# Virus Predictor

# I worked on this challenge [with: Joel Matos].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# It takes a path that is relative to the file you are requiring it from. 
# It allows you to reference another ruby file or module to be used in the current program.
# Require will take an absolute path and is more complicated to use.
require_relative 'state_data'


class VirusPredictor
  attr_reader :population_density, :population, :state
  
# initializes an instance of VirusPredictor class and sets the following attributes: state_of_origin , population_density, and population.
  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# virus_effects calls the following private methods - predicted_deaths and speed_of_spread.
  
  def virus_effects
    predicted_deaths(population_density, population, state)
    speed_of_spread(population_density, state)
  end

  private
#predicted_deaths and speed_of_spread are considered private methods so that is why the virus_effect method is used to call out the following methods below. 
  
#predicted_deaths takes the population density, population, and state attributes and uses the if/else control flow to give us the outcome of deaths Outputs:print the result 
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end

    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end
#Takes population_density and state arguments and uses f/else control flow to determine result Output: prints the following results.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
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


STATE_DATA.each do |key, value|
  new_state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
  new_state.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# 1) The difference in the Hash state_data file were the hash rocket => and the : 
#     The hash rocket has to be used when using a string for a key to reference the value.
#     The : is used with symbols
# 2) Require Relative is used as to reference a file that is relative to the current file and is seen to be 
#     more a more convenient version of Require. Require needs an absolute path.
# 3) We used .each to iterate through the Hash, but you could use any of the other built in iterators
#     depending on what you need to do with the hash.
# 4) It stood out to me that they were using the instance variables in the virus_effects method
#     and they shouldn't have been required there.
# 5) I think getting more practice iterating through a large hash was good, and also how the methods
#     inside a class work with each other. This assignment helps you take a program someone else wrote
#     and analyze it to find ways to make it more efficient.









