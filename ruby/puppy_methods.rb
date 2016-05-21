class Puppy

  def initialize
  	p "initalizing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
  	integer.times do |integer|
  		puts "Woof!"
  	end
  	end
  		

  def roll_over
  	p "*rolls over*"
  end

  def dog_years(human_years)
  	dog_years = human_years / 6.5
  	# dog_years is a float, so round out normally
  	p dog_years.round
  end

  def jump_n_lick(name, gender)
  	p "*Jumps on #{name} and licks #{gender} right in the face*"
  end

end


#initalizing instance (buddy) of Puppy class
buddy = Puppy.new
#calling fetch method on instance buddy
buddy.fetch("stuffed animal")
#calling speak method on instance buddy
buddy.speak(7)
#calling roll_over method on instance buddy
buddy.roll_over
#calling dog_years method
buddy.dog_years(50)
#calling jump_n_lick method
buddy.jump_n_lick("Oshoke", "him")

#any other instance of Puppy should be able to call these methods as
# long as it is initalized

snoopy = Puppy.new
snoopy.fetch("jerky")
snoopy.jump_n_lick("Flora", "her")


# DESIGN YOUR OWN CLASS FOR RELEASE 2 

class Player
	def initialize
	#	p "initalizing new player..."
	end

	def shooting(n1,n2,n3)
		p "Short range shooting stat: #{n1}"
		p "Medium range shooting stat: #{n2}"
		p "Long range shooting stat: #{n3}"
	end

	def dribble_stat(integer)
		p "Dribbling in traffic: #{integer}"
	end

	def pass_stat(integer)
		p "Vision and passing: #{integer}"
	end

end

# set up an array to store instances
player_names = []
# set index/counter at 0
i = 0
# loop 50 times
while i <= 50
# create and 0-50 new instances at index 0 in player_names array
	player_names[i] = Player.new
	i += 1
end

# ***Use ObjectSpace to retrieve all instances of a given class ***
player_names.each do |instance|
	 instance.shooting(90,85,99)
	 instance.dribble_stat(95)
	 instance.pass_stat(90)
end

# p player_names