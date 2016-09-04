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

def add_daycare(name, loc, min_age, max_age, spots)
  new_daycare = "INSERT INTO daycares (name, loc, min_age, max_age, spots_avail) VALUES (?, ?, ?, ?, ?)"
  $DB.execute(new_daycare, [name, loc, min_age, max_age, spots])
end

# add_daycare("KinderCare", "Schaumburg", 0, 7, "true")