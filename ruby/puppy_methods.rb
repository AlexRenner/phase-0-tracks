class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(woof)
    woof.times do
      print "Woof"
    end
    puts ""
  end

  def roll_over
    puts "*ROLLOVER*"
  end

  def dog_years(human_years)
    age = human_years * 7
    p age
  end

  def shake
    puts "*SHAKE*"
  end

end

chihuaua = Puppy.new

chihuaua.fetch("ball")
chihuaua.speak(10)
chihuaua.roll_over
chihuaua.dog_years(6)
chihuaua.shake

class Farret
  def initialize(name)
    @name = name
    p "making new farret"
  end

  def climb(object)
    puts "#{@name} climbs up #{object}."
  end

  def burrows(object)
    puts "#{@name} burrowed into the #{object}."
  end

end

farret_array = []

5.times do # changed from 50 to 5 for simplicity's sake
  lucy = Farret.new("lucy")
  farret_array << lucy
end

p farret_array

farret_array.each do |farret|
  farret.climb("couch")
  farret.burrows("blanket")
end