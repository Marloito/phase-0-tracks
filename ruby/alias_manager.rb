var_name = ""
puts "Hello, let's create your aliases. Type 'done' when you are finished entering names."
until var_name == "Fupi" #this is the new name created when done is typed
	vowels = ["a", "e", "i", "o", "u"]
	consenents = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

	#a = vowels[0]



	puts "Please type your full name."

	#take name as input
	var_name = gets.chomp
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
		

	var_name = var_name.join.split

	var_name.map! { |name| name.capitalize }

	var_name = var_name.join(' ')
	break if var_name == "Fupi"
	p "New name: #{var_name}"		
end

puts "Thank you for using alias manager."