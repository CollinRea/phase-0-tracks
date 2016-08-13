# Alias Maker Module

# Define a method that takes a real name
  
  # Create "aeiouy" variable
  # Create consonant variable

  # Split name by " " to separate first and last name into an array
  # Reverse the array order
  # Join name back together into a string

  # Iterate through string to find vowels and consonants
    # if vowel change to next vowel
    # if consonant change to next consonant
  
  # return new alias
#end

def alias_maker(name)

  vowels = "aeiouya"
  consonant = "bcdfghjklmnpqrstvwxzb"

  name = name.split(" ").reverse.join(" ").downcase

  vowel_i = 0
  cons_i = 0
  new_name = ""

  while vowel_i < name.length
    if name[vowel_i] == vowels[cons_i] || name[vowel_i] == consonant[cons_i]
      if name[vowel_i] == vowels[cons_i]
        new_name[vowel_i] = vowels[cons_i + 1]
        vowel_i += 1
        cons_i = 0
      else
        new_name[vowel_i] = consonant[cons_i + 1]
        vowel_i += 1
        cons_i = 0
      end
    elsif name[vowel_i] == " "
      new_name[vowel_i] = name[vowel_i]
      vowel_i += 1
    else
      cons_i += 1
    end
  end

  new_name.split.each {|word| word.capitalize!}.join(" ")
end


# User Interface

def ui
  aliases = Hash.new
  finished = false

  while finished == false

    puts "Input the name you'd like to encrypt to an Alias:"
    user_name = gets.chomp.to_s

    if user_name == "quit"
      finished = true
    else
      aliases[user_name] = (alias_maker(user_name))
      puts "Generating..."
      puts "     ..."
      puts "     ..."
      puts "     ..."
      puts "Your Alias is:"
      p alias_maker(user_name)
      puts "If finished type 'quit' to exit, otherwise..."
  end
  end
  aliases
end

ui.each {|realname, aliasname| p "#{realname} was changed to #{aliasname}"}

