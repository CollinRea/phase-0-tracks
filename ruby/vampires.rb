
def vamp
  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp

  puts "What year were you born?"
  born = gets.chomp

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic = gets.chomp

  puts "Would your like to enroll in the company's health insurance plan?"
  insurance = gets.chomp

  current_year = Time.now.year

  if name == (“Drake Cula” || “Tu Fang”)
    result = "Definitely a vampire"
  elsif (age == (current_year - born)) && (garlic || insurance)
    result = "Probably not a vampire."
  elsif (age == (current_year - born)) || (garlic && insurance)
    result = "Probably a vampire."
  elsif (age == (current_year - born)) && (garlic && insurance)
    result = "Almost certainly a vampire."
  else
    result = "Results inconclusive"
  end

puts result
    
end

vamp()
