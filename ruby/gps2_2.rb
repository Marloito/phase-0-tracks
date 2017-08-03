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

shopping_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: push the key and value into hash
# print hash
# output: hash
def add_item(list, item, quantity)
  list[item] = quantity
  p list
end

add_item(shopping_list, "oranges", 2)

# Method to remove an item from the list
# input: list, item name
# steps: remove the key from the hash
# output: print updated hash
def remove_item(list, item)
  list.delete(item)
  p list
end	

remove_item(shopping_list, "oranges")

# Method to update the quantity of an item
# input: list, item name , and quantity
# steps: alter the value connected to specific key
# output: print updated hash

def change_quantity(list, item, new_quantity)
  list[item] = new_quantity
  p list
end	

change_quantity(shopping_list, "pizza", 3)

# Method to print a list and make it look pretty
# input: list
# steps: print each key and value in the list
# output: each key and value printed pretty

def print_list(list)
  list.each { |item, quantity| puts "#{item}: #{quantity}" }
end

print_list(shopping_list)  