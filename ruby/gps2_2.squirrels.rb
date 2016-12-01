
# Method to create a list
def create_list(grocery_items)
  
  # input: string of items separated by spaces (example: "carrots apples cereal pizza")
  grocery_array = grocery_items.split(" ")
 
  # steps: 
 # change string to an array
  groceries_hash = {}
  
  # convert to a hash with default quantity, 1
  grocery_array.each { |index| groceries_hash[index] = 1 }
  
  # output: hash
  p groceries_hash
 
end

# Method to add an item to a list
def add_grocery_item(list, new_item, quantity)
 # input: item name and optional quantity

 # steps: add new_item and quantity to our hash
 list[new_item] = quantity 
  
 # output: print updated hash
 p list
  
end  

# Method to remove an item from the list
def remove_grocery_item(list, old_item)
# input: Need list and item to remove 

# steps: Delete item from list
  list.delete(old_item)
# output: print updated list
  p list
end
  
# Method to update the quantity of an item
def update_quantity(list, item, quantity) 
# input: list, item, new quantity
  
  add_grocery_item(list, item, quantity)
# steps: update hash key with new value
# output: updated hash with new quantity
end  

# Method to print a list and make it look pretty
def print_pretty_list(list)
# input: list
  list.each do |grocery_item, quantity|
    puts "#{grocery_item} ==> #{quantity}"
  end
# steps: iterate over hash and print out the key/value pairs in a pretty way
# output: pretty list
end
  
our_list = create_list("carrots apples cereal pizza")  
add_grocery_item(our_list, "socks", 6)
remove_grocery_item(our_list, "pizza")
update_quantity(our_list, "apples", 3)
print_pretty_list(our_list)