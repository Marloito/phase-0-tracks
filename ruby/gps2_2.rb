# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create hash
  # set the item as a symbol and quatity as an integer
  # print the list to the console [can you use one of your other methods here?]
# output: print hash
def create_list(str)
  list = {}
  items = str.split
  items.each { |item| list[item] = 1 }
  p list
end

#shopping_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: push the key and value into hash
# print hash
# output: hash

#updated from add_item to add_change_item
def add_change_items(list, item, quantity)
	#NOTE if changing item make sure to type in 'item' correctly
  list[item] = quantity
  p list
end

#add_item(shopping_list, "oranges", 2)

# Method to remove an item from the list
# input: list, item name
# steps: remove the key from the hash
# output: print updated hash
def remove_item(list, item)
  list.delete(item)
  p list
end	

#remove_item(shopping_list, "oranges")

# Method to update the quantity of an item
# input: list, item name , and quantity
# steps: alter the value connected to specific key
# output: print updated hash

=begin -------------- same as add_item, updating to reflect
def change_quantity(list, item, new_quantity)
  list[item] = new_quantity
  p list
end	
=end

#change_quantity(shopping_list, "pizza", 3)

# Method to print a list and make it look pretty
# input: list
# steps: print each key and value in the list
# output: each key and value printed pretty

def print_list(list)
  list.each { |item, quantity| puts "#{item}: #{quantity}" }
end

#print_list(shopping_list)  

list = create_list("Lemonade Tomatoes Onions Ice_Cream")
add_change_items(list, "Lemonade", 2)
add_change_items(list, "Tomatoes", 3)
add_change_items(list, "Ice_Cream", 4)
remove_item(list, "Lemonade")
add_change_items(list, "Ice_Cream", 1)

print_list(list)

#REFLECT----------------------------
=begin

-It's difficult for me to pseudocode obstacles that seem easier for me to conquer with code. 
I also find it difficult to write out my solutions in plain english instead of in code. 

-Being able to link data using hashes makes certain tasks much easier. However a strength of 
arrays is being able seperate strings into arrays in order to iterate through them. 

-A method returns an object, and unless explicitly told a method will return the last statement
in the method.

-You can pass variables, strings, booleans, integers, and other methods into a method. 

-You can pass information between methods by calling a method in another method. 

-What information can be used in methods has been solidified. A concept that is still confusing 
to me is how to affect different areas in an array in patterns (1st, 3rd, 5th). Also how to keep 
certain strigns together using split ("ice cream") without using dash/underscore

=end
