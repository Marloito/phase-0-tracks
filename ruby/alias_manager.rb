var_name = ""
aliases = {}
vowels = ["a", "e", "i", "o", "u"]
consenents = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
=begin #breaking somehow..look into in future to simplify code
def capitalize(full_name)
	full_name = full_name.split

	full_name.map! { |name| name.capitalize } 

	full_name = full_name.join(' ')
end	
=end

puts "Hello, let's create your aliases. Type 'done' when you are finished entering names."

until var_name == "Fupi" #this is the new name created when done is typed
	puts "Please type your full name."

	#take name as input
	var_name = gets.chomp
	original_name = var_name
	var_name.downcase!

	#break name into words (array)
	var_name = var_name.split

	#switch first and last words 
	var_name[0], var_name[2] = var_name[2], var_name[0]

	#break name into letters
	var_name = var_name.join(' ').split('')

	#if vowel change to next vowel
	#if not then go to next consenent

	var_name.each do |letter|
		if vowels.include?(letter)
			if letter == vowels.last
				letter = vowels.first
			else	
				var_name[var_name.index { |x| x.include?(letter) }] = vowels[vowels.index { |x| x.include?(letter) } + 1] 
			end	
		elsif consenents.include?(letter)
			if letter == consenents.last
				letter = consenents.first
			else	
				var_name[var_name.index { |x| x.include?(letter) }] = consenents[consenents.index { |x| x.include?(letter) } + 1] 
			end	
		end			
	end

  #will use if can make capitalize method work (on line 6)  
	#var_name = var_name.join 
	#capitalize(var_name)
	#capitalize(original_name)

	var_name = var_name.join.split

	var_name.map! { |name| name.capitalize }

	var_name = var_name.join(' ')

	original_name = original_name.split

	original_name.map! { |name| name.capitalize } 

	original_name = original_name.join(' ')


	break if var_name == "Fupi" #stop loop when 'done' is entered----done -> Fupi

	aliases[original_name] = var_name #push name and alias into hash

	p "New name: #{var_name}"		
end

puts "" #readability 
puts "OVERVIEW"

aliases.each { |real_name, new_alias| puts "#{real_name} AKA #{new_alias}" }

puts"" #readability
puts "Thank you for using alias manager."