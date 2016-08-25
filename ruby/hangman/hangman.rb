
class Hangman
  attr_reader :tries, :misses
  attr_accessor :tries_max      #This will allow the admin to set max tries
  
  def initialize(correct_word)
    @correct_word = correct_word.downcase
    @guess_spaces = "_" * correct_word.length
    @tries = 0
    @tries_max = 6
    @misses = []
    puts "Generating word... Good Luck!"
    
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
    if @tries >= 6
      game_over
      false
    elsif @correct_word.include? guess_letter
      puts "Correct!"
      true
    else
      @tries += 1
      @misses << guess_letter
      puts "Sorry '#{guess_letter}' is not a letter in this word."
      puts "You have #{@tries_max - @tries} tries left."
      game_over
      false
    end
  end

  def game_status
    @guess_spaces.capitalize.split("").join(" ")
  end
  
  def game_over
    if @tries >= 6
      puts "Sorry! You are out of tries... the correct word was:"
      puts @correct_word.capitalize.split("").join(" ")
    end
  end

  def game_complete
    puts "Game over! You Win!" if @correct_word == @guess_spaces
  end
end

# USER INTERFACE



# DRIVER CODE

first_game = Hangman.new("Jamaica")

first_game.guess("a")
first_game.guess("i")
first_game.guess("n")
first_game.guess("b")
first_game.guess("p")
first_game.guess("q")
first_game.guess("d")
first_game.guess("h")
p first_game.misses
p first_game.tries
