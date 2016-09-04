# Daycare Database + Ratings and Openings

require 'sqlite3'
# require 'faker'

# create database for Daycares
$DB = SQLite3::Database.new ("daycares.db")
$DB.results_as_hash = true

# create table in db for daycares
create_table_cmd = <<-SQL_TABLE 
  CREATE TABLE IF NOT EXISTS daycares(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    loc VARCHAR(255),
    min_age INT,
    max_age INT,
    spots_avail BOOLEAN
  )
SQL_TABLE

# create table in db for reviews
create_reviews_cmd = <<-SQL_TABLE 
  CREATE TABLE IF NOT EXISTS reviews(
    id INTEGER PRIMARY KEY,
    rating INT,
    recommended BOOLEAN,
    daycare_id INT,
    FOREIGN KEY (daycare_id) REFERENCES daycares(id)
  )
SQL_TABLE

  $DB.execute(create_table_cmd)
  $DB.execute(create_reviews_cmd)


# function to add daycare which takes 5 arguments and passes to SQLite
def add_daycare(name, loc, min_age, max_age, spots)
  new_daycare = "INSERT INTO daycares (name, loc, min_age, max_age, spots_avail) VALUES (?, ?, ?, ?, ?)"
  $DB.execute(new_daycare, [name, loc, min_age, max_age, spots])
end


# function to add daycare review and return id
def daycare_review(rating, reco, id)
  $DB.execute("INSERT INTO reviews (rating, recommended, daycare_id) VALUES (?, ?, ?)", [rating, reco, id])
  id
end


# function to retrieve daycares from SQLite and display to user
def display_daycares
  added_daycares = $DB.execute("SELECT * FROM daycares")
  
  added_daycares.each_with_index do |daycare, index|
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
end







# Driver Test Code

# add_daycare("KinderCare", "Schaumburg", 0, 7, "true")
# add_daycare("Jennifer's Kids", "Schaumburg", 0, 6, "true")

display_daycares

# daycare_review(4,'true',2)

# $DB.execute("SELECT name, loc, rating, recommended FROM reviews JOIN daycares ON daycares.id = daycare_id")

# puts "Review for daycare #{daycare_review(2,'false', 2)} added."








