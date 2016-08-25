
class Hangman
  
  def initialize(correct_word)
    @correct_word = correct_word.downcase
    @guess_spaces = "_" * correct_word.length
  end
  
  def guess(guess_letter)
    @correct_word.split("").each_with_index do |letter, index|
      if guess_letter == letter
        @guess_spaces[index] = guess_letter
        puts "Correct!"
        puts game_status
        game_complete
      end
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
first_game.guess("m")
