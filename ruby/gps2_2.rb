# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # divide string into an array, split at the spaces
  # create an empty hash
  # iterate through items in array
    # create a key and value
    # set default quantity to 1
  # print the list to the console 
# output: hash with associated quantities

def create_list(item)
  array_items = item.split(' ')
  grocery_hash = Hash.new
  array_items.each do |grocery|
    grocery_hash[grocery] = 1
  end
  p grocery_hash
end
items = "carrots apples cereal pizza"

grocery_hash = create_list(items)

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # takes two arguments
  # enters arguments as a new key-value pair
  # updates hash with new item and quantity
# output: hash with updated list items and quantities 

def update_item(grocery_hash, list_item, quantity)
  grocery_hash[list_item] = quantity
  p grocery_hash
end

update_item(grocery_hash, "avocado", 3)

# Method to remove an item from the list
# input: item name 
# steps:
  # take one argument (item)
  # match with existing keys in hash
  # if match, delete key/value out of hash
# output: hash with updated list of items with associated quantities

def remove_item(grocery_hash, list_item)
  grocery_hash.delete(list_item)
  p grocery_hash
end

remove_item(grocery_hash, "carrots")

# Method to update the quantity of an item
# input: take 2 arguments to update quantity of item
# steps:
  # identity correct key (item)
  # update quantity (value)
  # match with existing hash
# output: print hash with updated list 

# def update_quantity(grocery_hash, list_item, quantity)
#  grocery_hash[list_item] = quantity
#  p grocery_hash
# end

update_item(grocery_hash, "pizza", 9) #I like pizza!

# Method to print a list and make it look pretty
# input: entire hash
# steps:
  # take hash as argument; include "each" statement
  # have a 'puts' statement that says (title line)
  # iterate through hash that displays each key/value pair
# output: print key/value on separate columns

def print_list(grocery_hash)
  puts "Here is your grocery list:"
  grocery_hash.each {|item, quantity| puts "#{item}: #{quantity}"}
end
  
print_list(grocery_hash)
  