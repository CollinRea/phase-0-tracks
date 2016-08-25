
class Hangman
  attr_reader :tries, :misses, :tries_max

  def initialize
    @correct_word = File.readlines("words.txt").sample.chomp.downcase
    @guess_spaces = "_" * @correct_word.length
    @tries = 0
    @tries_max = 7
    @misses = []
    puts "Generating word... Good Luck!"
    puts " _____"
    puts " |   |"
    puts " |"
    puts " |"
    puts " |"
    puts " |"
    puts "_|______"
    puts game_status
    
  end
  
  def guess(guess_letter)
    if check_tries(guess_letter)   # => check if user has tries left
      @correct_word.split("").each_with_index do |letter, index|
        if guess_letter == letter && @guess_spaces[index] == "_"
          @guess_spaces[index] = guess_letter
          puts game_status    # => print current game status
          game_complete       # => check if word is complete
        end
      end
    end
  end
  
  def check_tries(guess_letter)
    if game_over    # check game_over, which returns true if tries are at 6
      false         # sends false back to guess to not allow the iteration
    elsif @correct_word.include? guess_letter
      puts "Correct!"
      true
    else
      @tries += 1
      @misses << guess_letter
      puts "Sorry '#{guess_letter}' is not a letter in this word."
      game_over
      false
    end
  end

  def game_status
    @guess_spaces.capitalize.split("").join(" ")
  end
  
  def game_over
    if @tries >= @tries_max
      puts " _____ "
      puts " |   | "
      puts " |  ( ) "
      puts " |  _|_ "
      puts " |   |  "
      puts " |  / \\ "
      puts "_|______ "
      puts "Sorry! You are out of tries... the correct word was:"
      puts @correct_word.capitalize.split("").join(" ")
      true
    end
  end

  def game_complete
    if @correct_word == @guess_spaces
      puts "Game over! You Win!"
      @tries = @tries_max
    end
  end
end

# USER INTERFACE

def play_game

puts "Welcome to Hangman v0.01 (beta)"
new_game = Hangman.new

until new_game.tries == new_game.tries_max 
    puts "Please choose a letter: "
    new_game.guess(gets.chomp.to_s.downcase)
    puts "Letters missed: #{new_game.misses}"
    puts "Guesses Remaining: #{new_game.tries_max - new_game.tries}"
  end
end

play_game


