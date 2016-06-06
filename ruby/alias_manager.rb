# declare neccesary variables
# define method that takes an array
# prompt user for their name
# break name into array
# iterate through array
# write fix for edge cases and irregular characters
# push to hash (alias => real name)

alias_hash = Hash.new

def alias_maker(hash)
	name = ""
	until name.downcase == "quit"
		puts "Hello! What name would you like to alias? (Or type \"quit\" to exit)"
		print '>'
		name = gets.chomp.downcase
		if name == "quit"
			exit_method(hash)
		else
			scrambled_name = name.gsub(/[aeioubcdfghjklmnpqrstvwxyz]/,
				'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a',
				'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h',
				'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n',
				'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't',
				't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z',
				'z' => 'b')
			# scrambled_again = scrambled_name.gsub(/[bcdfghjklmnpqrstvwxyz]/,)
			original_name_array = name.split(' ')
			name_array = scrambled_name.split(' ')
			if original_name_array.length == 1
				hash[scrambled_name.capitalize] = name.capitalize
			elsif original_name_array.length == 2
				name_array = [name_array[-1].capitalize, name_array[0].capitalize]
				original_name_array = [original_name_array[0].capitalize, original_name_array[1].capitalize]
				hash[name_array.join(' ')] = original_name_array.join(' ')
			elsif original_name_array.length == 3
				name_array = [name_array[-1].capitalize, name_array[1].capitalize, name_array[0].capitalize]
				original_name_array = [
					original_name_array[0].capitalize,
					original_name_array[1].capitalize,
					original_name_array[-1].capitalize]
				hash[name_array.join(' ')] = original_name_array.join(' ')
			end
			# p name_array
		end
	end
end

def exit_method(hash)
	hash.each {|code_name, name| puts "#{code_name} is the alias of #{name}."}
	exit(0)
end

alias_maker(alias_hash)