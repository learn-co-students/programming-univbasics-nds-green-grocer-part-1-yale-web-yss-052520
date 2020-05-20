require 'pry'

#Define a helper method that takes in a hash and returns
# the entire hash if parameter name matches a value in the hash.
# Returns nil otherwise.
def check_shelf(shelf_hash, name)
  shelf_hash.find {|key, value| value==name}.nil? ? nil : shelf_hash
end

def find_item_by_name_in_collection(name, collection)
  collection.length.times do |index|
    var = check_shelf(collection[index], name)
    if not var.nil?
      return var
    end
  end
  nil
end

#helper procedure takes in a consolidated cart and an item whose counter field must be incremented
def increment_count(cart, item)
  cart.length.times do |index|
    if cart[index][:item] == item
      cart[index][:count] += 1
    end
  end
  cart
end

def consolidate_cart(cart)
  new_cart = []
  counter = 0
  while counter < cart.size do
    shopping_item = cart[counter][:item]
    #The case in which this item is already within the new array of hashes with counts
    if not find_item_by_name_in_collection(shopping_item, new_cart).nil?
      #Increment the value associated with count
      new_cart = increment_count(new_cart, shopping_item)
    else
      #If the item is not in the consolidated cart, add it
      new_listing = cart[counter]
      new_listing[:count] = 1
      new_cart << new_listing
    end
    counter += 1
  end
  new_cart
end
