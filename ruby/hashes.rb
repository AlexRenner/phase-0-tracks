# Prompt user for client info
puts "How many clients would you like to add?"
client_count = gets.chomp.to_i
puts ' '

# Create client hash
client = {}

def delux_check(delux)
	
	delux_package = nil

	until delux_package == true || delux_package == false
		delux_package = gets.chomp
		puts ' '

		if delux_package == "yes"
			delux = true
			return delux
		elsif delux_package == "no" 
			delux = false
			return delux
		else
			puts "Please enter yes or no:"
		end
	end
	puts ' '
end

# Create survey method to process values
def client_survey(client_info)
	puts "What is your full name?"
	client_info[:name] = gets.chomp
	puts ' '

	puts "What is your age?"
	client_info[:age] = gets.chomp.to_i
	puts ' '

	puts "How many children do you have?"
	client_info[:children] = gets.chomp.to_i
	puts ' '

	puts "What decor theme do you like?"
	client_info[:decor] = gets.chomp
	puts ' '

	puts "Would you like the delux package? (yes/no)"
	delux_answer = nil
	client_info[:delux] = delux_check(delux_answer)
	puts ' '
end

# Call method
client_survey(client)

p client
puts ' '

def second_survey(client_info)
	puts "What value would you like to change?"
	entry = gets.chomp

	if entry.include? "name"
		client_info[:name] = gets.chomp
	elsif entry.include? "age"
		client_info[:age] = gets.chomp.to_i
	elsif entry.include? "children"
		client_info[:children] = gets.chomp.to_i
	elsif entry.include? "decor"
		client_info[:decor] = gets.chomp
	elsif entry.include? "theme"
		client_info[:decor] = gets.chomp
	elsif entry.include? "delux"
		puts "Would you like the delux package? (yes/no)"
		delux_answer = nil
		client_info[:delux] = delux_check(delux_answer)
	elsif entry.include? "package"
		puts "Would you like the delux package? (yes/no)"
		delux_answer = nil
		client_info[:delux] = delux_check(delux_answer)
	else
		puts "Invalid value name. Thank you for your information!"
	end
end

# Prompt user to check and/or change info
puts "Would you like to change any of this info? (yes/no)"
update = gets.chomp
puts ' '

if update == "yes"
	second_survey(client)
	p client
	exit(0)
else
	p client
	exit(0)
end