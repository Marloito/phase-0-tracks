=begin
#standalone module (used globally)
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily (words)
		words + "!!!" + " :D"
	end			
end	

p Shout.yell_angrily("No")
p Shout.yelling_happily("Yes")
=end

#mixin module (used to add instance methods to classes)
module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily (words)
		words + "!!!" + " :D"
	end			
end	

class	Parent
	include Shout

	def initialize
		puts "Initializing parent"
	end
end

class Child
	include Shout

	def initialize
		puts "Initializing child"
	end
end	

parent = Parent.new
child = Child.new

p parent.yelling_happily("Good job")

p child.yell_angrily("Waaahh")