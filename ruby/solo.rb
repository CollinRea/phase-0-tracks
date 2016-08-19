# Class Design 6.4 Solo Challenge

# Programmer Class

# Attributes
  # Experience (in years)
  # Languages known [Array in order of favorites]
  # Pro-Bootcamp : True or False
    # if true - Add 'closed minded' attribute of True  -- Scratched
  # Favorite Stimulant

# Methods
  # Write code - takes integer for hours coded
  # Display Favorite Language
  # Increase experience
  # Add new language

class Programmer
  attr_reader :language, :favorite_stim, :name
  attr_accessor :experience, :pro_boot

  def initialize(name,experience,language)
    @name = name
    @experience = experience
    @language = language
    @favorite_stim = "none"
  end

  def write_code(hours)
    puts "Programmer writes code for #{hours} hours! Time for a short break..."
  end

  def update_stimulant
    puts "Favorite stimulant is currently set to #{@favorite_stim}"
    puts "What would you like to update it to?"
    @favorite_stim = gets.chomp
    puts "Favorite stimulant is now set to: #{@favorite_stim}"
  end

  def level_up
    @experience += 1
  end

end

# TEST CODE

# collin = Programmer.new("Collin", 1,["Ruby", "Javascript", "HTML", "CSS"])

# collin.write_code(10)

# collin.favorite_stim

# collin.level_up


# USER INTERFACE

def pdi

  finished = false
  pdi_results = Array.new

  puts "Welcome to the Programmer Database Initializer(PDI)"
  puts "Lets get started..."

  while finished == false

    puts "Please provide the name of the Programmer: "
    programmer_name = gets.chomp

    puts "How many years of experience does he/she have? "
    programmer_exp = gets.chomp.to_i

    puts "Please list known programming languages with most preferred languages first: "
    programmer_lang = gets.chomp.gsub(/[^+#0-9A-Za-z]/, ' ').split(" ")

    programmer = Programmer.new(programmer_name, programmer_exp, programmer_lang)

    programmer.update_stimulant

    pdi_results << [programmer.name, programmer.experience, programmer.favorite_stim, programmer.language]

    puts "If this completes your entries, please type 'done' otherwise hit enter to continue: "
    continue = gets.chomp.downcase

    if continue == 'done'
      finished = true
    end

  end

  puts "Here are your entries that we added to the database:"
  pdi_results.each do |x|
    puts "-" * 15
    puts x[0]
    puts "Years Experience: #{x[1]}"
    puts "Preferred Stimulant: #{x[2]}"
    puts "Favorite Languages: "
    puts x[3].join(", ")
  end

  puts "-" * 15

end

pdi








