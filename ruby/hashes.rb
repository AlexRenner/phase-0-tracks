# prompt user for input
# create new hash
# push input to hash
# check for valid input where necessary
# prompt user for updates
# print hash and exit

new_client = Hash.new
puts "Hello! Thank you for choosing Redo For You! to renovate your place!"
puts "Let us get some information for our systems please."
puts "What is your name?"
new_client[:name] = gets.chomp.capitalize
puts ' '

puts "Welcome #{new_client[:name]}! How old are you?"
new_client[:age] = gets.chomp.to_i
puts ' '

puts "And do you have any children?"
children = gets.chomp.downcase
puts ' '

if children == "yes" || children == "y"
	puts "How many do you have?"
	new_client[:children] = gets.chomp.to_i
else
	new_client[:children] = 0
end
puts ' '

puts "What decor do you have in mind #{new_client[:name]}?"
new_client[:decor] = gets.chomp
puts ' '

puts "Thank you #{new_client[:name]}! I will log that you are #{new_client[:age]},
have #{new_client[:children]} kid(s) and would like a #{new_client[:decor]} style decor.
Would you like to update any of this information?"
update = gets.chomp.downcase

if update == "yes" || update == "y"
	change = nil 
	until change == "done"
		puts "What would you like to change? (name, age, children or decor)
		Enter \"done\" when finished." # not sure why it centers this
		change = gets.chomp.downcase
		if new_client.any? {|key, value| key.to_s == change}
			puts "And what would you like to change #{change} to?"
			new_client[change.to_sym] = gets.chomp
			new_client[:age] = new_client[:age].to_i # couldn't get both of these to_i in one statement
			new_client[:children] = new_client[:children].to_i
		elsif change == "done"
		else
			puts "I didn't quite catch that."
		end
	end
end

puts "Thank you #{new_client[:name]}! I will log that you are #{new_client[:age]},
have #{new_client[:children]} kid(s) and would like a #{new_client[:decor]} style decor."
puts ' '
p new_client