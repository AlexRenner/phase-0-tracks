soda_flavors = ["Pepsi", "Coke", "Dr. Pepper", "Sprite"]
wine_for_food = {
	:poultry => "white",
	:beef => "red",
	:pork => "depends",
	:fish => "white"
}

soda_flavors.each do |flavor|
	puts "I like #{flavor}!"
end