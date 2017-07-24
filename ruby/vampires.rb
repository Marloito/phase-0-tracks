
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

=begin ----tests variables-----
puts "applicants name is #{applicant_name}"
puts "applicant age is #{applicant_age}"
puts "do the have correct age? #{correct_age}"
puts "do they want garlic? #{applicant_want_garlic}"
puts "do they want insurance? #{applicant_want_insurance}"
=end 
=begin
wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

puts wolves_like_garlic && wolves_like_sunshine
puts wolves_like_garlic || vampires_like_garlic
puts wolves_like_garlic && vampires_like_garlic
puts wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
puts (wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
puts vampires_like_garlic
puts !vampires_like_garlic
puts !(wolves_like_sunshine && wolves_like_garlic)
=end

if applicant_name == "Drake Cula" || applicant_name == "Tu Fang"
		puts "Definitely a vampire"
elsif !correct_age && !applicant_want_garlic && !applicant_want_insurance
	puts "Almost certainly a vampire."		
elsif	(applicant_want_garlic || applicant_want_insurance) && correct_age
	puts "Probably not a vampire."		
elsif (!applicant_want_garlic || !applicant_want_insurance) && !correct_age
	puts "Probably a vampire."
else
 puts "Results inconlusive"
end 			

