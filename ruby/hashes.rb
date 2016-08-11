# Interior Designer Client Database Program

# Create a new empty hash

# Get the following for hash form user:
# the client's name, age, number of children, decor theme, expedited(yes or no)
# convert user input to appropriate data type

# Print the hash back out to the screen

# Ask user if any information needs to be updated
#  If user types "none" skip it 
#  else get new value and update hash

# print new hash

client = Hash.new

puts "Good Morning!"

puts "Please enter the Client's full name:"
client[:full_name] = gets.chomp

