#set up hash (name, age, color, theme, kids?)
client_info = {
	name: "",
	age: "",
	color: "",
	theme: "",
	has_kids: ""
}

#intro
puts "Hello, in order to get started deigning your space, we will first need to gather some information from you."
puts	""
#get name - input into hash
puts "What is your full name?"
client_info[:name] = gets.chomp
#get age - input into hash
puts "How old are you?"
client_info[:age] = gets.chomp.to_i
#get favorite color - input into hash
puts "What is your favorite color?"
client_info[:color] = gets.chomp
#get theme - input into hash
puts "What theme would you like to follow?"
client_info[:theme] = gets.chomp
#get has_kids - input into hash 
puts "Do you have kids? (y/n)"
kids_input = gets.chomp 
if	kids_input == "y"
	kids_input = true
else
	kids_input = false
end		
client_info[:has_kids] = kids_input

#print out 
p client_info

#update info
puts "Would you like to update any info (category/no)?"
category_update = gets.chomp.to_sym
puts "What is your new answer?"
new_input = gets.chomp
if category_update == :has_kids
	if	new_input == "y"
		new_input = true
	else
		new_input = false
	end	
elsif category_update == :age	
	new_input = new_input.to_i
end

#update hash
client_info[category_update] = new_input

#print out hash
p client_info