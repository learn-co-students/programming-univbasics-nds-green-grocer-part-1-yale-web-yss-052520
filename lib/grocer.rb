require "pry"
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |thing|
  if thing[:item] == name 
    return thing 
  end
end 
return 
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  index = 0 
  cart.each do |item_hash|
    item = find_item_by_name_in_collection(item_hash[:item], new_cart)
     
    if item
      index2 = 0 
      while index2 < new_cart.length 
      if new_cart[index2][:item] == item[:item]
      new_cart[index2][:count] += 1 
    end 
      index2 += 1 
    end 
  else 
    item_hash[:count] = 1 
    new_cart << item_hash 
  end 
  #   if new_cart[index]
  #     new_cart[item_name][:count] += 1 
  #   else
  #     new_cart[item_name] = item_hash[item_name]
  #     new_cart[item_name][:count] = 1 
  # end 
end 
  new_cart
end 



  