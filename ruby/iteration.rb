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
