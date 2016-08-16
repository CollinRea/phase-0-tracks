# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty hash
  # split input string with space
  # assign new array to hash as keys
  # set default quantity of values to 1
  # print the list to the console [can you use one of your other methods here?]
# output: Hash 

def new_list(string_of_items)
  our_list = {}
  split_list = string_of_items.split(" ")
  split_list.each do |item|
    our_list[item] = 1
  end
  print_list(our_list)
  our_list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # take item name and quantity if given
  # add item name and quantity to list
  # print the updated list
# output: updated hash

def add_item_to_list(list, item_name, quantity = 1)
  list[item_name] = quantity
  print_list(list)
end

# Method to remove an item from the list
# input: item name to be removed
# steps:
  # check the list for given item name
  # IF found, remove from list
  # print updated list
# output: updated hash

def rem_item_from_list(list, item_name)
  list.delete_if {|item, value| item == item_name}
  print_list(list)
end

# Method to update the quantity of an item
# input: item name to be updated and new quantity
# steps:
  # check if the item name exists in the list
  # IF found, update value with given quantity
  # print updated list
# output: updated hash

def update_list(list, item_name, new_quantity)
  list[item_name] = new_quantity
  print_list(list)
end

# Method to print a list and make it look pretty
# input: take the list to be printed
# steps: 
  # iterate through list and print value and corresponding amount
# output: printing items in list 

def print_list(list)
  puts "Here are the items in your list:"
  list.each do |item, quantity|
    puts "#{quantity} - #{item}"
  end
end




# DRIVER CODE

groceries = new_list("Bananas Grapes Strawberries")

add_item_to_list(groceries, "Lemonade", 2)
add_item_to_list(groceries, "Tomatoes", 3)
add_item_to_list(groceries, "Onion")
add_item_to_list(groceries, "Ice Cream", 4)

rem_item_from_list(groceries, "Lemonade")

update_list(groceries, "Ice Cream", 1)


#Reflection
  # I learned Pseudocode is hard but important and its a skill that I want to try to improve on
  # If we used an array of arrays it would slightly complicate accessing the items and the Hash worked well for us
  # a Method has an implicit return of the last expression in the method unless otherwise explicitly stated
  # A array, a hash, a variable, another method, or even a block can be passed into a method
  # By creating it to take arguments and it can return information which can be sent to another method
  # I think we were both very confident in these concepts, however I do want to work more on Pseudocode
  # as well as refactoring.





