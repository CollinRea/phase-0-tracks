# Class Design 6.4 Solo Challenge

# Programmer Class

# Attributes
  # Experience (in years)
  # Languages known [Array in order of favorites]
  # Pro-Bootcamp : True or False
    # if true - Add 'closed minded' attribute of True
  # Favorite Stimulant

# Methods
  # Write code - takes integer for hours coded
  # Display Favorite Language
  # Increase experience
  # Add new language

class Programmer
  attr_reader :language, :favorite_stim
  attr_accessor :experience, :pro_boot

  def initialize(name,experience,language)
    puts "Initializing Programmer instance ..."
    @name = name
    @experience = experience
    @language = [language]
    @favorite_stim = "none"
    @pro_boot = nil
  end

  def write_code(hours)
    puts "Programmer writes code for #{hours} hours! Time for a short break..."
  end

  def favorite_stim
    puts "Favorite stimulant is currently set to #{@favorite_stim}"
    puts "What would you like to update it to?"
    @favorite_stim = gets.chomp
    puts "Favorite stimulant is now set to: #{@favorite_stim}"
  end

  def level_up
    @experience += 1
  end

  def bootcamp
    puts "What is your stance on Programming Boot Camps? (For or Against)"
    pro_bootcamp = gets.chomp.downcase

    @pro_boot = pro_bootcamp == "for" ? true : false
    puts "pro_boot set to #{@pro_boot}."
  end

end

# TEST CODE

# collin = Programmer.new("Collin", 1,["Ruby", "Javascript", "HTML", "CSS"])

# collin.write_code(10)

# collin.favorite_stim

# collin.bootcamp

# collin.level_up

# USER INTERFACE

def pdi

  finished = false
  pdi_results = Array.new

  while finished == false

    puts "Welcome to the Programmer Database Initializer(PDI)"
    puts "Lets get started..."

    puts "Please provide the name of the Programmer: "
    programmer_name = gets.chomp

    puts "How many years of experience does he/she have? "
    programmer_exp = gets.chomp.to_i

    puts "Please list known programming languages with most preferred languages first: "
    programmer_lang = gets.chomp.gsub!(/[^0-9A-Za-z]/, ' ').split(" ")

    pdi_results << Programmer.new(programmer_name, programmer_exp, programmer_lang)

    finished = true

  end

  p pdi_results

end

pdi








