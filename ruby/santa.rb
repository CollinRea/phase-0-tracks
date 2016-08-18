# Santa Class - Release 0
  
  # Three methods including Speak, Eat milk and cookies, and initialize 

  # Speak should print "Ho, ho, ho! Haaaappy holidays!" when called

  # Eat milk and cookies method should take a cookie parameter 
  # and then say "That was a good <type of cookie>!"

  # initialize should print "Initializing Santa instance ..."


class Santa

  def initialize
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
end

kris = Santa.new

kris.speak

kris.eat_milk_and_cookies("sugar cookie")
