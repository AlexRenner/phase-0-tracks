def build_array(one, two, three)
	constructed_array = ["First"]
	constructed_array += [one, two, three]
	p constructed_array
end

def add_to_array(array, item)
	array << item
	p array
end

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

second_array = ["Coffee", "Tea", "Water"]

third_array = new_array + second_array

p third_array

build_array("Bag", 4, true)

final_array = []
add_to_array(final_array, ";kajsdg")
add_to_array(["a", "b", "c", 1, 2], 3)