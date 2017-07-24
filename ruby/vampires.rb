puts "How many employess will we be processing today?"
employees_processed = gets.chomp.to_i

until employees_processed == 0
	puts "What's your name?"
	applicant_name = gets.chomp

	puts "How old are you?"
	applicant_age = gets.chomp.to_i

	puts "What year were you born?"
	applicant_year_born = gets.chomp.to_i
		if 2017 - applicant_year_born == applicant_age
			correct_age = true
		else
			correct_age = false
		end	

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	applicant_want_garlic = gets.chomp
		if applicant_want_garlic == "y" 
			applicant_want_garlic = true
		else
			applicant_want_garlic = false
		end

	puts "Would you like to enroll in the company’s health insurance? (y/n)"
	applicant_want_insurance = gets.chomp
		if applicant_want_insurance == "y"
			applicant_want_insurance = true
		else
			applicant_want_insurance = false
		end		

	puts "List any allergies. Type 'done' when finished"
	applicant_allergies = ""
	until applicant_allergies.include? "done" or applicant_allergies.include? "sunshine"
		applicant_allergies = gets.chomp
	end	

	if applicant_allergies == "sunshine"
		puts "Probably a vampire."
	elsif applicant_name == "Drake Cula" || applicant_name == "Tu Fang"
		puts "Definitely a vampire"
	elsif !correct_age && !applicant_want_garlic && !applicant_want_insurance
		puts "Almost certainly a vampire."		
	elsif	applicant_want_garlic || applicant_want_insurance && correct_age
		puts "Probably not a vampire."		
	elsif !applicant_want_garlic || !applicant_want_insurance && !correct_age 
		puts "Probably a vampire."
	else
	 puts "Results inconlusive"
	end 	
	employees_processed -= 1
end

puts	"Actually, never mind! What do these questions have to do with anything? Let's all be friends."


	

