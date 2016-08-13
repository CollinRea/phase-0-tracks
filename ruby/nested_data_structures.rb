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

grocery[:deli]["Fresh Meats"].each {|meat| puts meat}

p grocery[:deli]["Sandwiches"][0]

puts "Ohh that sounds good, what is on it?"

def sandwich(choice) 
  puts "A #{choice} includes the following:"
  yield
  puts "on our FRESHEST bread!"
end

sandwich("BLT") { 
  p grocery[:deli]["Fresh Meats"][3]
  p grocery[:produce]["Vegetables"][3]
  p grocery[:produce]["Vegetables"][0]
}

