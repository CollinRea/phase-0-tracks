def hamster
    
    puts "What is the hamsters name?"
    name = gets.chomp
    name.to_s
    
    valid_volume = false

    while valid_volume == false
        puts "How loud is this hamster from 1 to 10?"
        volume = gets.chomp
        volume_i = volume.to_i

        if volume_i > 0 && volume_i < 11
            valid_volume = true
        else
            puts "Please enter a valid integer 1 - 10"
            valid_volume = false
        end
    end

    volume_i.inspect

    puts "What color is the fur of the hamster?"
    fur = gets.chomp
    fur.to_s

    valid_candidate = false

    while valid_candidate == false
        puts "Is this hamster a good candidate for adoption?"
        good_candidate = gets.chomp
        good_candidate.downcase

        if good_candidate == ("y" || "yes" || "true")
            good_candidate = true
            valid_candidate = true
        elsif good_candidate == ("n" || "no" || "false")   
            good_candidate = false
            valid_candidate = true
        else
            puts "Please input a valid answer: (y or n)"
            valid_candidate = false
        end
    end

    good_candidate.inspect

    valid_age = false

    while valid_age == false

    puts "What is the estimated age of the hamster?"
    age = gets.chomp

        if age == ""
            age = nil
            ages = "n/a"
            valid_age = true
        elsif age != ""
            ages = age.to_i
            if ages > 0
                valid_age = true
            else
                puts "Please input a valid age"
                valid_age = false
            end
        end
    end

    puts "Ok this hamster is named #{name}, its volume rating #{volume_i}, it has #{fur} color fur."
    puts "Its adoption eligibility: #{good_candidate}"
    puts "We estimate the age to be #{ages}."
end

hamster()
