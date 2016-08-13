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

  vowels = "aeiouy"
  consonant = "bcdfghjklmnpqrstvwxz"

  name = name.split(" ").reverse.join(" ").downcase

  i = 0
  j = 0
  new_name = ""

  while i < name.length
    if name[i] == vowels[j] || name[i] == consonant[j]
      if name[i] == vowels[j]
        new_name[i] = vowels[j + 1]
        i += 1
        j = 0
      else
        new_name[i] = consonant[j + 1]
        i += 1
        j = 0
      end
    elsif name[i] == " "
      new_name[i] = name[i]
      i += 1
    else
      j += 1
    end
  end
  
  new_name.split.each {|word| word.capitalize!}.join(" ")
end

p alias_maker("Collin Rea")
