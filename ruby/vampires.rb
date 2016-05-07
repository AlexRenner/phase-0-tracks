puts "How many employees are we registering?"
employees = gets.chomp.to_i

def vampire_check

	puts "What is your name?"
	name = gets.chomp

	if name.downcase == "drake cula" || name.downcase == "tu fang"
		puts "Definitely a vampire!"
		break
	end

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
	garlic_bread = gets.chomp

	if garlic_bread.downcase == "yes"
		garlic = true
	else
		garlic = false
	end

	puts "Would you like to enroll in the copany's health insurance? (yes or no)"
	insure = gets.chomp

	if insure.downcase == "yes"
		insurance = true
	else
		insurance = false
	end

	puts "It is good to meet you #{name}!"

	puts 

	if age >= 90 && !garlic && !insurance
		puts "Definitely a vampire!"
	elsif age >= 90 && !garlic || !insurance
		puts "Almost certainly a vampire."
	elsif age < 90 && !garlic || !insurance
		puts "Probably a vampire."
	elsif age < 90 && garlic && insurance
		puts "Not a vampire!"
	else
		puts "Results inconclusive..."
	end

end

employees.times do
	vampire_check
end