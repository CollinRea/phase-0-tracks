our_array = []

p our_array

our_array << "box" << "shoes" << "keyboard" << "map" << "picture"

p our_array

our_array.delete_at(2)

p our_array

our_array.insert(2, "pencil")

p our_array

our_array.delete("box")

p our_array

inquire = our_array.include?("picture")

p "Do we have a picture: #{inquire}."

new_array = ["books", "keyboad", "box"]

super_array = our_array + new_array

p super_array
