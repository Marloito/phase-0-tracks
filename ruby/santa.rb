class Santa

	attr_reader :ethnicity
	attr_accessor :gender, :age
=begin
	def gender=(new_gender)
		@gender = new_gender
	end	

	def gender
		@gender
	end	

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end
=end	
	
#testing release 1
#	def about
#		puts "Gender: #{@gender}"
#		puts "Ethnicity: #{@ethnicity}"
#	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!"
	end

	def celebrate_birthday
		@age += 1
		p "New age: #{@age}"
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.rotate!(@reindeer_ranking.index(reindeer) + 1)
		p "New order - #{@reindeer_ranking}" 
	end

end

=begin
#test RELEASE 0---------------------------------------
santa1 = Santa.new
santa1.speak
santa1.eat_milk_and_cookies("snickerdoodle")

# test RELEASE 1----------------------------------------
santas = []
genders = ["female", "male", "prefer not to answer", "gender fluid", "gender non-conforming", "N/A"]
ehtnicities = ["Japanese", "Okinawan", "Norweigian", "black", "prefer not to answer", "N/A"]

genders.length.times do |ind|
	santas << Santa.new(genders[ind], ehtnicities[ind])
end

#readability 
puts ""

santas.each do |santa_instance|
	puts santa_instance.about
end	

#test RELEASE 2 & 3-----------------------------------
nick = Santa.new("boy", "n/a")

nick.get_mad_at("Rudolph")
nick.get_mad_at("Cupid")
nick.celebrate_birthday
puts "Nick's ethnicity is #{nick.ethnicity}, and he is #{nick.age} years old"
puts "Nicks gender: #{nick.gender}"
nick.gender = "male"
puts "Nick's new gender: #{nick.gender}"
=end

genders = ["female", "male", "prefer not to answer", "gender fluid", "gender non-conforming", "N/A"]
ehtnicities = ["Japanese", "Okinawan", "Norweigian", "black", "prefer not to answer", "N/A"]

50.times do
	santa = Santa.new(genders.sample, ehtnicities.sample)
	santa.age = rand(0..140)
	puts "Age: #{santa.age}, Ethnicity: #{santa.ethnicity}, Gender: #{santa.gender}."
end	
