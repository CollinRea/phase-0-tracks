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

puts "Please enter the Client's age:"
client[:age] = gets.chomp.to_i

puts "Please enter the number of children the Client has:"
client[:no_of_children] = gets.chomp.to_i

puts "What is the preferred decor theme?"
client[:decor] = gets.chomp

puts "Is this an expedited request? (Yes or No)"
client[:expedited] = gets.chomp.downcase == "yes" ? true : false

p client

puts "\nWould you like to update any of this information?"
puts "If so please enter the key, otherwise type 'none' to end."
update = gets.chomp.downcase.to_sym

if update == :none
  p client
else
  puts "Please enter a new value for #{update}:"
  new_value = gets.chomp
  
  if update == :age || update == :no_of_children
    client[update] = new_value.to_i
  elsif update == :expedited
     new_value_bool = new_value.downcase == "yes" ? true : false
     client[update] = new_value_bool
  else
    client[update] = new_value
  end

  p client
end
