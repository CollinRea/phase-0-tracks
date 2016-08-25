
class Hangman
  attr_reader :tries, :misses
  
  def initialize(correct_word)
    @correct_word = correct_word.downcase
    @guess_spaces = "_" * correct_word.length
    @tries = 0
    @misses = []
    puts "Generating word... Good Luck!"
    
  end
  
  def guess(guess_letter)
    if @tries <= 6
      @correct_word.split("").each_with_index do |letter, index|
        if guess_letter == letter && @guess_spaces[index] == "_"
          @guess_spaces[index] = guess_letter
          puts "Correct!"
          puts game_status
          game_complete
        end
      end
    else
      puts "No more tries.. Sorry :( Game Over!"
    end
  end
  
  def game_status
    @guess_spaces.capitalize.split("").join(" ")
  end
  
  def game_complete
     puts "Game over! You Win!" if @correct_word == @guess_spaces
  end
end

# DRIVER CODE

first_game = Hangman.new("Jamaica")

first_game.guess("a")
first_game.guess("z")
first_game.guess("j")
first_game.guess("i")
first_game.guess("c")
first_game.guess("q")
first_game.guess("t")
p first_game.misses
p first_game.tries


