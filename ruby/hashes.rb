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
