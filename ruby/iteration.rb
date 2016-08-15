puts "Hi, This statement is before the method and block!"

def my_method
  puts "This statement is inside the method..."
  yield
end

my_method {puts "... and this statement is coming from the block!"}

fruits = ["apple", "pear", "banana", "orange"]
names = {"John" => "McEnroe", "Michael" => "Phelps", "Simone" => "Biles", "Ryan" => "Lochte"}

p fruits
fruits.each {|x| p x}

p names
names.each {|f_name, l_name| p "#{f_name} #{l_name}"}

p fruits
fruits.map! do |fruit|
  fruit.upcase
end
p fruits

#1
nums = [1, 45, 3, 15]
hash = {"a" => 12, "d" => 45, "z" => 116}

p nums.delete_if {|num| num < 5}
p hash.delete_if {|key, val| val > 50}

p nums.keep_if {|num| num == 45}
p hash.keep_if {|key, val| key != "d"}

new_nums = [1, 45, 3, 15, 2, 8]
new_hash = {"a" => 12, "d" => 45, "z" => 116}
p new_nums.select { |e| e.odd? }
p new_hash.select {|k, v| v.odd?}

p new_nums.take_while {|e| e < 9}
p new_hash.reject! {|k, v| v < 13}