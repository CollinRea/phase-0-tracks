# Daycare Database + Ratings and Openings

require 'sqlite3'

# create database for Daycares
$DB = SQLite3::Database.new ("daycares.db")
$DB.results_as_hash = true

# create table in db for daycares
create_table_cmd = <<-SQL_TABLE 
  CREATE TABLE IF NOT EXISTS daycares(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    loc VARCHAR(255),
    min_age INT,
    max_age INT,
    spots_avail BOOLEAN
  )
SQL_TABLE

$DB.execute(create_table_cmd)


# create table in db for reviews
create_reviews_cmd = <<-SQL_TABLE 
  CREATE TABLE IF NOT EXISTS reviews(
    id INTEGER PRIMARY KEY,
    rating INT,
    recommended BOOLEAN,
    comments TEXT,
    daycare_id INT,
    FOREIGN KEY (daycare_id) REFERENCES daycares(id)
  )
SQL_TABLE

$DB.execute(create_reviews_cmd)


# function to add daycare which takes 5 arguments and passes to SQLite, returns to UI
def add_daycare(name, loc, min_age, max_age, spots)
  $DB.execute("INSERT INTO daycares (name, loc, min_age, max_age, spots_avail) VALUES (?, ?, ?, ?, ?)", 
    [name, loc, min_age, max_age, spots])

  user_interface
end


# function to add daycare review and returns to UI
def daycare_review(rating, reco, comments, id)
  $DB.execute("INSERT INTO reviews (rating, recommended, comments, daycare_id) VALUES (?, ?, ?, ?)", 
    [rating, reco, comments, id])

  user_interface
end


# function to retrieve daycares from SQLite and display to user, returns to UI
def display_daycares
  daycare_data = $DB.execute("SELECT * FROM daycares")

  daycare_data.each_with_index do |daycare, index|
    puts "-- Daycare #{index + 1} --"
    puts "#{daycare['name']} in #{daycare['loc']}"
    if daycare['min_age'] == 0
      puts "Youngest age accepted: Newborns"
    else
      puts "Youngest age accepted: #{daycare['min_age']}"
    end
    puts "Oldest age accepted: #{daycare['max_age']}"
    puts "Spots available: #{daycare['spots_avail']}"
    puts "---------------"
  end
  user_interface
end


# function to retrieve reviews for the given daycare, returns to UI
def display_reviews(daycare_to_review)
  daycare_reviews = []
  if daycare_to_review == "all"
    daycare_reviews = $DB.execute( "SELECT reviews.id, name, loc, rating, comments, recommended FROM reviews 
        JOIN daycares ON daycares.id = daycare_id")
  else
    daycare_reviews = $DB.execute( "SELECT reviews.id, name, loc, rating, comments, recommended FROM reviews 
          JOIN daycares ON daycares.id = daycare_id
          WHERE daycare_id = ?", [daycare_to_review])
  end

  daycare_reviews.each do |data|
    puts "Anonymous Review Entry # #{data['id']}"
    puts "#{data['name']} in #{data['loc']}"
    puts "Rated #{data['rating']} out of 5 Stars"
    puts "Comments: #{data['comments']}"
    puts "Recommended: #{data['recommended']}"
    puts "---------------"
  end
  user_interface
end


# function to update a daycare, returns to UI
def update_daycare(updated_key, updated_value, daycare_name)
  update_entry = <<-SQL
  UPDATE daycares SET "#{updated_key}" = "#{updated_value}" WHERE name = "#{daycare_name}"
  SQL

  $DB.execute(update_entry)

  user_interface
end


# USER INTERFACE

puts "-- Welcome to the Daycare Database Entry System --"

def user_interface

  puts "Please select from the following options:
        (1) Display Daycares
        (2) Display Reviews
        (3) Add a Daycare to the Database
        (4) Add a Daycare review
        (5) Update Daycare information
        (0) Exit Program "
  puts "\n"
  user_input = gets.chomp.to_i

  if user_input == 1
    display_daycares

  elsif user_input == 2
    puts "Please input the ID # for which Daycare you'd like to see the current Reviews..."
    puts "(If you are unsure of the ID # you can find a list in option (1) of the Main Menu)"
    puts "Press enter to return to Main Menu, or type 'all' to view all reviews:"
    user_request = gets.chomp.downcase
    display_reviews(user_request)

  elsif user_input == 3
    puts "What is the name of the Daycare you want to add?"
    user_daycare = gets.chomp

    puts "What city is it located?"
    user_city = gets.chomp

    puts "What is the youngest age they will accept?"
    user_min_age = gets.chomp.to_i

    puts "What is the oldest child they will accept?"
    user_max_age = gets.chomp.to_i

    puts "Spots are still available? (true, false)"
    user_spots = gets.chomp.downcase

    add_daycare(user_daycare, user_city, user_min_age, user_max_age, user_spots)

  elsif user_input == 4
    puts "Please input the ID # for the Daycare you'd like to review..."
    puts "(If you are unsure of the ID # you can find a list in option (1) of the Main Menu)"
    puts "Otherwise, press enter to return:"
    user_review = gets.chomp

    puts "How many starts (out of 5) will you give this Daycare?"
    user_rating = gets.chomp.to_i

    puts "You would recommend this Daycare to others? (true or false)"
    user_reco = gets.chomp.downcase

    puts "Please provide any comments you'd like to add: "
    user_comments = gets.chomp

    daycare_review(user_rating, user_reco, user_comments, user_review)

  elsif user_input == 5
    puts "What is the name of the daycare you'd like to update in the database?"
    user_update = gets.chomp

    puts "What attribute would you like to change? (loc, min_age, max_age, spots_avail)"
    user_key = gets.chomp.downcase

    puts "Input the new value for this attribute?"
    user_value = gets.chomp

    update_daycare(user_key, user_value, user_update)

  elsif user_input == 0
    puts "Exiting Program. Thank you!"
  else
    puts "Invalid Input."
    user_interface
  end

end


user_interface


# Driver Test Code

# add_daycare("KinderCare", "Schaumburg", 0, 7, "true")
# add_daycare("Jennifer's Kids", "Schaumburg", 0, 6, "true")
# add_daycare("Goddard School", "Hoffman Estates", 1, 7, "false")

# daycare_review(4, "true", "Teachers are great, but front desk is a pain to deal with.", 2)
# daycare_review(5, "true", "My kids LOVED KinderCare, and I'd recommend to any of my friends!", 1)
# daycare_review(3, "false", "Seems ok, but way too expensive for us.", 3)
# daycare_review(1, "false", "I will never take my kids back there!", 2)
# daycare_review(2, "false", "My son came home with dirt all over him every day, they don't seem to care!", 3)
# daycare_review(5, "true", "Can't say good enough things about KinderCare!", 1)
# daycare_review(4, "true", "Goddard is the best thing that has happened to my child's learning!", 3)

# display_daycares


# display_reviews(1)
# display_reviews(2)
# display_reviews(3)



# $DB.execute("SELECT name, loc, rating, recommended FROM reviews JOIN daycares ON daycares.id = daycare_id")

# puts "Review for daycare #{daycare_review(2,'false', 2)} added."








