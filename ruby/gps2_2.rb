# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]break string into array items
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash of item => quantity

# Method to add an item to a list
# input: item name and optional quantity
# steps: take list and item push item into list
# output: hash pair (or full hash)

# Method to remove an item from the list
# input: identify its key 
# steps:delete the key (deletes value too)
# output: updated list

# Method to update the quantity of an item
# input: key and its new value
# steps:identify key, set key equal to new quantity
# output: upadated pair

# Method to print a list and make it look pretty
# input: the list's hash
# steps: puts a sentence with dressed up hash
# output: nice string for the user

items = "carrots apples cereal pizza"
grocery_list = Hash.new

def print_list(list)
  puts "Your list for shopping:"
  list.each {|item, quantity| puts "#{item}: #{quantity}"}
end

def create_list(items, list)
  items_array = items.split(" ")
  items_array.each do |list_item|
    list[list_item] = 1
  end
  print_list(list)
end

create_list(items, grocery_list)

def add_item(item, list)
  if list.has_key?(item)
    list[item] += 1
   else
    list[item] = 1
  end
  print_list(list)    
end

add_item("juice", grocery_list)
add_item("carrots", grocery_list)

def remove_item(item, list)
  list.delete(item)
  print_list(list)
end

remove_item("cereal", grocery_list)

def update_quantity(item, new_quantity, list)
  list[item] = new_quantity
  print_list(list)
end

update_quantity("pizza", 4, grocery_list)

print_list(grocery_list)