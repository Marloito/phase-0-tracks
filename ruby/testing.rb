
puts "How many employess will we be processing today?"
employees_processed = gets.chomp.to_i

until employees_processed == 0
	puts "What's your name?"
	applicant_name = gets.chomp

	#############################
	puts "List any allergies."
	applicant_allergies = ""
	until applicant_allergies.include? "done" or applicant_allergies.include? "sunshine"
		applicant_allergies = gets.chomp
	end	

	if applicant_allergies.include? "sunshine"
		return
	end	



#########################
	if applicant_name == "Drake Cula" || applicant_name == "Tu Fang"
			puts "Definitely a vampire"
	else
	 puts "Results inconlusive"
	end 	

	employees_processed -= 1
end

