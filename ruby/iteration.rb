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
