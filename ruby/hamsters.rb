puts "What's your hamsters name?"
hamster_name = gets.chomp
puts "What's the volume of your hamster between 1-10?"
hamster_vol = gets.chomp
puts "What is the fur color of your hamster?"
hamster_fur = gets.chomp
puts "Is your hamster a good candidate for adoption (y/n)?"
hamster_adopt = gets.chomp
puts "Aproximate age of your hamster?"
hamster_age = gets.chomp

hamster_vol = hamster_vol.to_i

hamster_age = hamster_age.to_i

if hamster_adopt == "y"
	hamster_adopt = true
else hamster_adopt = false
end

puts "Hamster's name is #{hamster_name}"
puts "Volume is #{hamster_vol}"
puts "Fur color is #{hamster_fur}"
puts "Adoptabel? #{hamster_adopt}"
puts "Age is #{hamster_age}"
			