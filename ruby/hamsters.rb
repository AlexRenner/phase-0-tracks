puts "What is the hamster's name?"
name = gets.chomp.capitalize

puts "On a scale of 1 to 10 how loud does #{name} squeak?"
squeak_volume = gets.chomp.to_i

puts "What is #{name}'s fur color?"
fur_color = gets.chomp

puts "Is #{name} a good candidate for adoption?"
adoptable = gets.chomp

puts "What is #{name}'s estimated age?"
hamster_age = gets.chomp.to_i

if hamster_age == ""
	hamster_age = nil
end

puts "The hamster's name is #{name}."
puts "He is #{fur_color} and has a squeak volume or #{squeak_volume}."
puts "Is #{name} a good candidate for adoption: #{adoptable}"
puts "#{name} is believed to be #{hamster_age} years old."
puts ' '