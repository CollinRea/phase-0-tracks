class Puppy

  def initialize
      puts "Initializing new puppy instance..."
  end

  def speak(num)
      puts "woof" * num
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def roll_over
      puts "rolls over"
  end

  def dog_years(num)
      dog_age = num * 7
      puts dog_age
      dog_age
  end

  def jump(num)
      puts "jumps #{num} feet!"
  end

end

# fido = Puppy.new

# fido.fetch('ball')
# fido.speak(3)
# fido.roll_over
# fido.dog_years(5)
# fido.jump(100)

class DBC_Student

 def initialize
 end

 def google(num)
     puts "Googles #{num} many hours to find problem"
 end

 def understands
     puts "I totally get this content!"
 end

 def location(str)
     puts "We'll be attending at #{str}"
 end

end

Tom = DBC_Student.new

student_array = []

50.times do 
    student = DBC_Student.new
    student_array << student
end

student_array.each do |i|
    i.google(1)
    i.understands
    i.location('Chicago')
end