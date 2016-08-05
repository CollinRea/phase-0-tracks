
def vamp

  puts "How many employees will be processed?"
  employees = gets.chomp.to_i

  while employees > 0   
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

    allergies = [ ]
    allergy_test = false
    puts "Please list any allergies you have:"

    while allergy_test == false
      input = gets.chomp.downcase
      allergies.push input

      if input == "done"
        allergy_test = true
        if name == "drake cula" || name == "tu fang"
          result = "Definitely a vampire"
        elsif (age == (current_year - born)) && (garlic == true || insurance == true )
          result = "Probably not a vampire."
        elsif (age != (current_year - born)) && (garlic == false && insurance == false)
          result = "Almost certainly a vampire."
        elsif (age != (current_year - born)) && (garlic == false || insurance == false)
          result = "Probably a vampire."
        else
          result = "Results inconclusive"
        end
      elsif input == "sunshine"
        result = "Probably a vampire."
        allergy_test = true
      else
        allergy_test = false
      end
    end

    puts result

    employees -= 1

  end

  puts "Actually never mind! What do these questions have to do with anything?"
  puts "Let's all be friends."
end

vamp()
