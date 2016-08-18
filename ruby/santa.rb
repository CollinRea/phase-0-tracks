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

  def initialize(gender,ethnicity)
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

  def gender=(new_gender)
    @gender = new_gender
  end

  def age 
    puts @age
  end

  def ethnicity
    puts @ethnicity
  end

end

# DRIVER CODE

santas = []

santa_genders = ["male", "male", "female", "bigender", "neutral", "n/a"]
santa_ethnicities = ["Asian", "White", "Latino", "Mixed", "African-American", "n/a"]

santa_genders.length.times do |i|
  santas << Santa.new(santa_genders[i], santa_ethnicities[i])
end

puts "#{santas}"

the_real_santa = Santa.new("male", "magical")
 
p the_real_santa

the_real_santa.celebrate_birthday

the_real_santa.get_mad_at("Rudolph")

the_real_santa.gender=("n/a")

p the_real_santa

the_real_santa.age
the_real_santa.ethnicity






