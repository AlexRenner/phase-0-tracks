module Shout

  def self.yell_angrily(words)
    p words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	p words + "! Yay!"
  end

end

Shout.yell_happily("What?")
Shout.yell_angrily("What?")