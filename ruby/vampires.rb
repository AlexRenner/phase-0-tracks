puts "How many employees are we registering?"
employees = gets.chomp.to_i
# method for discerning vampire candidates
def vampire_check

	puts "What is your name?"
	name = gets.chomp
# name check for vampire only names
	if name.downcase == "drake cula" || name.downcase == "tu fang"
		puts "Definitely a vampire!"
		return
	else
		puts ' '
	end
# age check
	puts "How old are you?"
	age = gets.chomp.to_i
	puts ' '
# garlic allergy check
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
	garlic_bread = gets.chomp
	puts ' '

	if garlic_bread.downcase == "yes"
		garlic = true
	else
		garlic = false
	end
# immortality check
	puts "Would you like to enroll in the copany's health insurance? (yes or no)"
	insure = gets.chomp
	puts ' '

	if insure.downcase == "yes"
		insurance = true
	else
		insurance = false
	end

	puts "It is good to meet you #{name}!"
	puts ' '
# allergy check method
	$allergy = "none"

	def allergy_check
		until $allergy == "done"
			puts "Please list an allergy. If no other allergies please enter \"done\"."
			$allergy = gets.chomp.downcase
			puts ' '
			if $allergy == "sunshine"
				break
			end
		end
	end

	puts "Do you have any alergies?"

	allergy_check
# process user input
	if $allergy == "sunshine"
		puts "Probably a vampire."
	elsif age >= 90 && !garlic && !insurance
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

abort("Actually, never mind! What do these questions have to do with anything? Let's all be friends.")