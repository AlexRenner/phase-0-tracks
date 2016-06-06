# declare neccesary variables
# define method that takes an array
# prompt user for their name
# break name into array
# iterate through array
# write fix for edge cases and irregular characters
# push to hash (alias => real name)

alias_hash = Hash.new

def alias_maker
	name = nil
	until name.downcase == "quit"
		puts "Hello! What name would you like to alias? (Or type \"quit\" to exit)"
		name = gets.chomp
		if name.downcase == "quit"
			exit_method(alias_hash)
		else
			name_array = name.split(' ')
			p name_array
		end
	end
end

def exit_method(hash)
	hash.each {|code_name, name| puts "#{code_name} is the alias of #{name}."}
	exit(0)
end