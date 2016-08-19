
module Shout
  def yell_angrily(words)
    words + "!!!" + " :(" 
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Student
  include Shout
end

class Teacher
  include Shout
end

chris = Student.new
puts chris.yelling_happily("I love math")
puts chris.yell_angrily("Someone took my pencil")

jennifer = Teacher.new
puts jennifer.yell_angrily("Everybody sit down")
puts jennifer.yelling_happily("Welcome to the third grade class")