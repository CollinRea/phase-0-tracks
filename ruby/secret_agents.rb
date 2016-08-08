# Peer Pairing sessions 4.6 - Collin Rea & Sam Leiken

=begin 
Define ecrypt method and take one argument
  set standard variable to zero
  start loop while standard is less than length of argument
    take each argument letter and advance it
    increase standard by 1
  end loop
  return argument
end method
=end

=begin 
Define decyrpt method and take one argument
  set standard variable to zero
  set variable for full alphabet
  start loop while standard variable is less than length of argument
  take each argument letter and find it in alph variable
  move it back by 1 position in the string
  make sure to skip spaces
  end loop
  return new decrypted password
end method
=end

def encrypt(pwd)
  i = 0
    new_pwd = "" 
    while i < pwd.length
      if pwd[i] != " "
        new_pwd[i] = pwd[i].next
        i += 1
      else
        new_pwd[i] = pwd[i]
        i += 1
      end
    end
  new_pwd
end
  
def decrypt(pwd)
  alph = "abcdefghijklmnopqrstuvwxyz"
    i = 0
    j = 0
    new_pwd = "" 
    while i < pwd.length
      if pwd[i] != " "
        if pwd[i] == alph[j]
          new_pwd[i] = alph[j - 1]
          i += 1
          j = 0
        else
          j += 1
        end
      else
        new_pwd[i] = pwd[i]
        i += 1
      end
    end
    new_pwd
end

#USER INTERFACE

puts "Would you like to encrypt or decrypt a password?"
agent_request = gets.chomp.downcase
if agent_request == "encrypt"
    puts "Please supply a password to encrypt:"
    agent_pwd = gets.chomp
    puts encrypt(agent_pwd)
elsif agent_request == "decrypt"
    puts "Please supply a password to decrypt:"
    agent_pwd = gets.chomp
    puts decrypt(agent_pwd)
else
    puts "That is not a valid entry! **Self Distructing**"
end
