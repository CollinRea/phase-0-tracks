
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :(" 
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end
end


p Shout.yell_angrily("I can't believe it")
p Shout.yelling_happily("I am so exited")