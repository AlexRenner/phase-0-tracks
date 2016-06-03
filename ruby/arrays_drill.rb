new_array = []

p new_array

new_array << "item1"
new_array << "item2"
new_array << "item3"
new_array << "item4"
new_array << "item5"

p new_array

new_array.delete_at(2)

p new_array

new_array.insert(2, "Go team!")

p new_array

new_array.delete("item1")

p new_array

if new_array.include?("Go team!")
	puts "It includes Go team!"
else
	puts "Sorry! Nope."
end
