# Daycare Database + Ratings and Openings

require 'sqlite3'
# require 'faker'

# create database for Daycares
db = SQLite3::Database.new ("daycares.db")

# create table in db for daycares
create_table_cmd = <<-SQL_TABLE 
  CREATE TABLE IF NOT EXISTS daycares(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    loc VARCHAR(255),
    min_age INT,
    max_age INT,
    spots_avail BOOLEAN
  );
  SQL_TABLE

# create table in db for reviews
create_reviews_cmd = <<-SQL_TABLE 
  CREATE TABLE IF NOT EXISTS reviews(
    id INTEGER PRIMARY KEY,
    rating INT,
    recommended BOOLEAN,
    daycare_id INT,
    FOREIGN KEY (daycare_id) REFERENCES daycares(id)
  );
  SQL_TABLE

  db.execute(create_table_cmd)
  db.execute(create_reviews_cmd)

