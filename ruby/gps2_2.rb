# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the string into an array of items
  # create an empy hash of items and quantity
  # convert array to hash with items and quantities
  # set default quantity to 1
  # print a pretty list
# output: hash with item as key and quantity as value

# Method to add an item to a list
# input: item name(string) and optional quantity(integer)
# steps: use .merge to add new item and quantity to hash
# output: updated hash with new item and quantity

# Method to remove an item from the list
# input: item name(string) to remove
# steps: use .delete to remove key=>value pair
# output: updated hash with item removed

# Method to update the quantity of an item
# input: item name(string) and quantity(integer)
# steps: set new value for correct key using hash index
# output: updated hash with new quantity of item

# Method to print a list and make it look pretty
# input: hash of items and quantity
# steps: use .each to print a more readable string with items and quantities
# output: pretty list

def create_list(items)
  list_array = items.split(" ")
  list_hash = {}
  list_array.each {|i| list_hash[i] = 1}
  p list_hash
end

def add_item(list, item, quantity)
  list.merge!({item => quantity})
end

def remove_item(list, item)
  list.delete(item)
end

def update_item(list, item, quantity)
  list[item] = quantity
end

def print_list(list)
  list.each {|key, value| puts "Item: #{key} => Quantity: #{value}"}
end

# Driver Code:
new_list = create_list("carrots apples cereal pizza")
add_item(new_list, "lemonade", 2)
add_item(new_list, "tomatoes", 3)
add_item(new_list, "onions", 1)
add_item(new_list, "ice cream", 4)
remove_item(new_list, "lemonade")
update_item(new_list, "ice cream", 1)

print_list(new_list)