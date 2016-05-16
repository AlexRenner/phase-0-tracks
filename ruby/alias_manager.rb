# create method for making fake name

def fake_name(name)
		name_array = name.split(' ')
		new_name = name_array[1] + ' ' + name_array[0]
		scrambled_name = new_name.downcase.gsub(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
		scrambled_again = scrambled_name.gsub(/[bcdfghjklmnpqrstvwxyz]/, 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'a')
		scrambled_array = scrambled_again.split(' ')
		final_name = scrambled_array[0].capitalize + ' ' + scrambled_array[1].capitalize
		return final_name
end

$spy_name = nil
$name_equivelents = Hash.new

class NameGenerator
	
	until $spy_name == "done"
# prompt user for their spy name
		puts "What is your secret spy first and last name? (type \"done\" to cancel)" 
		print '>'
		$spy_name = gets.chomp
		puts ' '
		if $spy_name.downcase == "done"
			$name_equivelents.each do |name, new_name|
				puts "#{name}'s fake name is #{new_name}."
			end
			puts "Don't tell anyone!"
			exit(0)
		else
			alias_name = fake_name($spy_name)
		end
		puts "Your new super top secret alias is #{alias_name}!"
		puts ' '
		
		$name_equivelents[$spy_name] = alias_name
	end
end

NameGenerator

#  Some stuff that I tried and I left for future consideration

#exploded_name = new_name.split(//)
#	exploded_name.each do |x|
#		vowels = 'aeiou'
#		consonants = 'bcdfghjklmnpqrstvwxyz'
#		index = 0
#		while index