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
  
  consonants = "bcdfghjklmnpqrstvwxz"
  next_cons = "cdfghjklmnpqrstvwxzb"
  
  name.downcase.tr(consonants,next_cons)
    .tr('aeiouy', 'eiouya')
    .split.reverse.each {|word| word.capitalize!}
    .join(' ')

  # Separated methods on lines 24-27 for readability
  # First .tr changes all consonants to next
  # Second .tr changes all vowels to next vowel
  # Split names to reverse and capitalize them
  # Rejoin to a single string

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
      puts alias_maker(user_name)
      puts "If finished type 'quit' to exit, otherwise..."
  end
  end
  aliases
end

ui.each {|realname, aliasname| puts "#{realname} was changed to #{aliasname}."}

