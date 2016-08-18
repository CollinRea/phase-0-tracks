# Santa Class - Release 0
  
  # Three methods including Speak, Eat milk and cookies, and initialize 

  # Speak should print "Ho, ho, ho! Haaaappy holidays!" when called

  # Eat milk and cookies method should take a cookie parameter 
  # and then say "That was a good <type of cookie>!"

  # initialize should print "Initializing Santa instance ..."

# Release  1 - Add Attributes

  # gender - passed in on initialization
  # ethnicity - passed in on initialization
  # reindeer_ranking - an array of reindeer from most preferred to least
  # age - not passed in on initialization and defaults to 0

class Santa
  attr_reader :gender, :ethnicity
  attr_accessor :age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @name = "Santa"
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end

end

# DRIVER CODE

#santas = []

#santa_genders.length.times do |i|
#  santas << Santa.new(santa_genders[i], santa_ethnicities[i])
#end
#puts "#{santas}"

# the_real_santa = Santa.new("male", "magical")
 
# p the_real_santa

# the_real_santa.celebrate_birthday

# the_real_santa.get_mad_at("Rudolph")

# the_real_santa.gender=("n/a")

# p the_real_santa

# puts "Santa's age is: #{the_real_santa.age}"
# puts "Santa identifies as a member of the #{the_real_santa.ethnicity} race."

# Pseudocode for Santa Creator program

# Create a method that takes a number
# Create gender and ethnicity arrays
# Create a santa counter variable
# Create a loop that runs the given number of times
  # Inside the loop, initialize a new Santa class
  # Assign the new class with a randomly selected gender and ethnicity
  # set age to a random number between 0 and 140
  # increase santa counter by one each loop
  # print gender, ethnicity, and age for each generated santa
# Close loop once it runs the given amount of times
# Print how many Santa they just made with santa counter to confirm.

def santa_maker(num)

  santa_genders = ["male", "female", "bigender", "transgender", "gender-fluid"]
  santa_ethnicities = ["Asian", "White", "Latino", "Mixed", "African-American", "Magical", "n/a"]
  
  santa_count = 0

  num.times do
    new_santa = Santa.new(santa_genders.sample, santa_ethnicities.sample)
    new_santa.age = rand(141)
    santa_count += 1
    puts "Santa is #{new_santa.gender}, identifies as #{new_santa.ethnicity}"
    puts "and is #{new_santa.age} years old"
  end

  puts "Generated #{santa_count} Santas per your request, enjoy!"

end

santa_maker(1000)






