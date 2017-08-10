#built in module's don't need self. for defining method
#they are designed to add instance methods to a class
module Flight
	def take_off(altitude)
		puts "Taking off and ascending to #{altitude} ..."
	end
end		

class Bird
	include Flight
end

class	Plane
	include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)


