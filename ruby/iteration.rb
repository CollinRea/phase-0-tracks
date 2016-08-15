puts "Hi, This statement is before the method and block!"

def my_method
  puts "This statement is inside the method..."
  yield
end

my_method {puts "... and this statement is coming from the block!"}