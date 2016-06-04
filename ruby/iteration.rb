soda_flavors = ["Pepsi", "Coke", "Dr. Pepper", "Sprite"]
wine_for_food = {
	:poultry => "white",
	:beef => "red",
	:pork => "either",
	:fish => "white"
}

soda_flavors.each do |flavor|
	puts "I like #{flavor}!"
end

soda_flavors.map do |flavor| 
	flavor = flavor + " cola"
	p flavor
end

soda_flavors.map! { |flavor| flavor.downcase }

p soda_flavors

wine_for_food.each {|meat, wine| puts "#{wine.capitalize} wine goes with #{meat}."}

new_hash = Hash[wine_for_food.map { |meat, wine| [meat, wine.capitalize] } ]
p new_hash

def delete_item (array)
	array.each do |item|
		if item.is_a?(String) && item.include?(".")
			array.delete(item)
		else
			puts "Nothing to delete"
		end
	end
end

test_array = ["a", 11, false, nil]
delete_item(soda_flavors)
p soda_flavors
delete_item(test_array)
p test_array

def filter_hash(hash)
	hash.each do |meat, wine|
		if wine.downcase == "white"
			# p hash
		else 
			hash.delete(meat)
		end
	end
end

filter_hash(wine_for_food)
p wine_for_food