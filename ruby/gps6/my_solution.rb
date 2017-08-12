# Virus Predictor

# I worked on this challenge with Kamrin Klauxchie
# We spent [#3] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative is a way of linking files together that doesn't require the direct file route. 
# Require is a way of linking files together in the current directory, and requires routes. 
#

require_relative 'state_data'

class VirusPredictor

#this can be used to generate a full report -- can also use current driver code below (showing options)
 def self.generate_report(states)
   states.each do |state_name, data|
     state = new(state_name, data[:population_density], data[:population])
     state.virus_effects
   end
 end

# defines the instance variables for each new instance called
 def initialize(state_of_origin, population_density, population)
   @state = state_of_origin
   @population = population
   @population_density = population_density
 end

# calls private methods
 def virus_effects
   predicted_deaths
   speed_of_spread
 end

 private

# determines estimated number of deaths based on population density of the state 
# prints a string 
# .floor rounds down to the lower whole number
density = 200
rate_of_death = 0.4

 def predicted_deaths
   # predicted deaths is solely based on population density 

    # multiplier when population density is less than 50
    multiplier = 0.05

    # sets new population density variable to have a mximum of 200
    max_pop = 200
    population_density_temp = [@population_density, max_pop].min
    
    multiplier = 0.1 * (population_density_temp / 50).floor if population_density_temp >= 50

    number_of_deaths = (@population * multiplier).floor


   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

 end

# determines estimated speed of virus spreading based on population density of the state 
# puts a string to keep on same line
 def speed_of_spread #in months
   # We are still perfecting our formula here. The speed is also affected
   # by additional factors we haven't added into this functionality.

=begin
  # ***original code***

  speed = 0

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
=end

=begin
   # ***this can be used to add conditions later (depeneding on conditions) and is slightly cleaner***

   if @population_density >= 200
     speed = 0.5
   elsif @population_density >= 150
     speed = 1
   elsif @population_density >= 100
     speed = 1.5
   elsif @population_density >= 50
     speed = 2
   else
     speed = 2.5
   end
=end

   # ***this is refactored to be much cleaner until updates are ready***

   speed = 2.5

   # sets new population density variable to have a mximum of 200
   max_pop = 200
   population_density_temp = [@population_density, max_pop].min

   # speed decreases by 0.5 whenever population density increases by 50
   speed -= 0.5 * (population_density_temp / 50).floor

   puts " and will spread across the state in #{speed} months.\n\n"

 end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

# We can use this to generate a full report with the class method as well (showing options)
# VirusPredictor.generate_report(STATE_DATA)

STATE_DATA.each do |state_name, data|
  state = VirusPredictor.new(state_name, data[:population_density], data[:population])
  state.virus_effects
end 


#=======================================================================
# Reflection Section

#QUESTIONS
# 1 - What are the differences between the two different hash syntaxes shown in the state_data file?
# 2 - What does require_relative do? How is it different from require?
# 3 - What are some ways to iterate through a hash?
# 4 - When refactoring virus_effects, what stood out to you about the variables, if anything?
# 5 - What concept did you most solidify in this challenge?

#ANSWERS
# 1 - the STATE_DATA hash is a constant and will not be changed while the program runs. It is globally available.
# 1 - The outer hash used strings as keys, and the inner hash uses symbols

# 2 - require_relative links files to our program using the relative path to our program.
# 2 - require links files uses the path relative to our current directory. 

# 3 - you can use built in methods like .times and .each to iterate throgh a hash 

# 4 - the instance variables being called were available throughout the class, so they weren't actually getting passed in as arguments

# 5 - the use of instance variables, and refactoring code (when and how much should you refactor?)
