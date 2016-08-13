# A Grocery Store!

grocery = {
  deli: {
    "Sandwiches" => [
      "BLT",
      "Italian",
      "Cuban"
    ],
    "Fresh Meats" => [
      "Ham",
      "Turkey",
      "Roast Beef",
      "Bacon"
    ]
  },
  produce: {
    "Fruit" => [
      "Apples",
      "Oranges",
      "Strawberries",
      "Kiwi"
    ],
    "Vegetables" => [
      "Tomato",
      "Potato",
      "Carrots",
      "Lettuce"
    ]
  },
  employees: {
    "Karen" => {
      days_missed: 10,
      promotable: false
    },
    "David" => {
      days_missed: 1,
      promotable: true
    },
    "Jessica" => {
      days_missed: 0,
      promotable: true
    }
  }
}

puts "Here is a list of our #{grocery[:deli].keys.last}:"
grocery[:deli]["Fresh Meats"].each {|meat| puts meat}

puts "Our sandwich of the day is the:"
puts grocery[:deli]["Sandwiches"][0]

puts "Ohh that sounds good, what is on it?"

def sandwich(choice) 
  puts "A #{choice} includes the following:"
  yield
  puts "on our FRESHEST bread!"
end

sandwich("BLT") { 
  puts grocery[:deli]["Fresh Meats"][3]
  puts grocery[:produce]["Vegetables"][3]
  puts grocery[:produce]["Vegetables"][0]
}

puts "Our employee of the month is #{grocery[:employees].keys.last}!"
puts "Missing #{grocery[:employees]["Jessica"][:days_missed]} days of work all of last month!"