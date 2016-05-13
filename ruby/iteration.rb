def block_in_method
	yield("Whazzzzzzuuuuup!?")
end

block_in_method { |x| puts "How's it going? #{x}"}

dishes = ["plate", "bowl", "knife", "cup", "fork"]

dish_count = {
	"plates" => 5,
	"bowls" => 3,
	"cups" => 6
}

puts ' '
p dishes
puts ' '
p dish_count
puts ' '

dishes.each do |dish|
	puts "The #{dish} is clean!"
end

puts ' '

dish_count.each do |dish, quantity|
	puts "All #{quantity} #{dish} are clean!"
end

puts ' '

dishes.map! do |dish|
	p dishes
	"Clean #{dish}"
end

puts ' '
puts "After .map call:"
p dishes
puts ' '

# A method that iterates throught items deleting per condition
numbers = [1,2,3,4,5,6,7,8]
p numbers

def smaller_delete(array)
	array.delete_if {|number| number < 5}
	p array
end

smaller_delete(numbers)
puts ' '

# A method that filters a data structure for only items per condition
numbers = [1,2,3,4,5,6,7,8]
p numbers

def only_evens(array)
	array.each do |number|
		if number % 2 == 0
			p number
		else
			nil
		end
	end
end

only_evens(numbers)
puts ' '
# Another that filters a data structure for only items per condition
puts "Type something puh-lease:"
user_string = gets.chomp

def find_the_a(string)
	a_array = string.split(' ')
	a_array.each do |word|
		if word.include?("a")
			p word
		else
			nil
		end
	end
end

find_the_a(user_string)
puts ' '
# A method that removes items from a data structure until false
no_creativity = {
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"four" => 4,
	"five" => 5,
	"six" => 6
}

def no_small_numbers(hash)
	hash.delete_if {|string, integer| integer <= 3}
	p hash
end

no_small_numbers(no_creativity)
puts ' '