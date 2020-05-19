def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |i|
    if i[:item] == name 
      return i 
    end
  end
  nil 
end

def find_count(name, collection)
  equal_names = []
  equal_names = collection.select do |i|
   i[:item] == name
  end
  if equal_names.length
    equal_names.length
  else 
    1 
  end
end

find_count("AVOCADO", [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
])

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  clean_cart = cart.each do |hash|
      #hash[:item] = cart[:item]
      #hash[:price] = cart[:price]
      #hash[:clearance] = cart[:clearance] 
      hash[:count] = find_count(hash[:item], cart)
  end 
  clean_cart
end


  