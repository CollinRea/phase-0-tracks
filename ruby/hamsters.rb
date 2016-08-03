def hamster
    
    puts "What is the hamsters name?"
    name = gets.chomp
    
    puts "How loud is this hamster from 1 to 10?"
    volume = gets.chomp

    puts "What color is the fur of the hamster?"
    fur = gets.chomp

    puts "Is this hamster a good candidate for adoption?"
    good_candidate = gets.chomp

    puts "What is the estimated age of the hamster?"
    age = gets.chomp

    if age == ""
        age = nil
    end
end

hamster()