# Daycare Database + Ratings and Openings

require 'sqlite3'

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
    comments TEXT,
    daycare_id INT,
    FOREIGN KEY (daycare_id) REFERENCES daycares(id)
  )
SQL_TABLE

$DB.execute(create_table_cmd)
$DB.execute(create_reviews_cmd)

$DAYCARES_DATA = $DB.execute("SELECT * FROM daycares")
$REVIEWS_DATA = $DB.execute("SELECT * FROM reviews")


# function to add daycare which takes 5 arguments and passes to SQLite
def add_daycare(name, loc, min_age, max_age, spots)
  new_daycare = "INSERT INTO daycares (name, loc, min_age, max_age, spots_avail) VALUES (?, ?, ?, ?, ?)"
  $DB.execute(new_daycare, [name, loc, min_age, max_age, spots])
end


# function to add daycare review and return id
def daycare_review(rating, reco, comments, id)
  $DB.execute("INSERT INTO reviews (rating, recommended, comments, daycare_id) VALUES (?, ?, ?, ?)", 
    [rating, reco, comments, id])
  id
end


# function to retrieve daycares from SQLite and display to user
def display_daycares
  $DAYCARES_DATA.each_with_index do |daycare, index|
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


# function to retrieve reviews for the given daycare
def display_reviews(daycare_to_review)
  # daycare_to_review = ""                # First section finds daycare.id from given daycare name
  # $DAYCARES_DATA.each do |daycare|      # if function is given an integer it would assume its the daycare id
  #   if daycare['name'] == daycare_name
  #     daycare_to_review = daycare['id']
  #   else
  #     daycare_to_review = daycare_name
  #   end
  # end

  daycare_reviews = $DB.execute( "SELECT reviews.id, name, loc, rating, comments, recommended FROM reviews 
        JOIN daycares ON daycares.id = daycare_id
        WHERE daycare_id = ?", [daycare_to_review])

  daycare_reviews.each do |data|
    puts "Anonymous Review Entry # #{data['id']}"
    puts "#{data['name']} in #{data['loc']}"
    puts "Rated #{data['rating']} out of 5 Stars"
    puts "Comments: #{data['comments']}"
    puts "Recommended: #{data['recommended']}"
    puts "---------------"
  end
 
end







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

display_daycares

display_reviews(1)
display_reviews(2)
display_reviews(3)



# $DB.execute("SELECT name, loc, rating, recommended FROM reviews JOIN daycares ON daycares.id = daycare_id")

# puts "Review for daycare #{daycare_review(2,'false', 2)} added."








