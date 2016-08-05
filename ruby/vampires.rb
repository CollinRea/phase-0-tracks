
def vamp
  puts "What is your name?"
  name = gets.chomp
  name.downcase!

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  born = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic = gets.chomp
  garlic.downcase!

  if garlic == ("yes" || "y" || "absolutely" || "sure")
    garlic = true
  elsif garlic == ("no" || "n" || "nope" || "noway")
    garlic = false
  end

  puts "Would your like to enroll in the company's health insurance plan?"
  insurance = gets.chomp
  insurance.downcase!

  if insurance == ("yes" || "y" || "absolutely" || "sure")
    insurance = true
  elsif insurance == ("no" || "n" || "nope" || "noway")
    insurance = false
  end

  current_year = Time.now.year

  if name == "drake cula" || name == "tu fang"
    result = "Definitely a vampire"
  elsif (age == (current_year - born)) && (garlic || insurance)
    result = "Probably not a vampire."
  elsif (age = (current_year - born)) && (garlic && insurance)
    result = "Almost certainly a vampire."
  elsif (age = (current_year - born)) && (garlic || insurance )
    result = "Probably a vampire."
  else
    result = "Results inconclusive"
  end

puts result
    
end

vamp()
