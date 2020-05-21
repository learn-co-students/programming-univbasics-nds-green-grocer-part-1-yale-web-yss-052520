def find_item_by_name_in_collection(name, collection)
  item = collection.find do |item_hash| 
      item_hash[:item] == name 
  end 
  puts item 
  return item 
end 

grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
]

#find_item_by_name_in_collection("CANNED CORN", grocery_shelf)

def item_in_bigarray? (item,array) 
  if find_item_by_name_in_collection(item,array) == nil 
    return false 
  else return true
  end 
end 

def add_count_to_cart(cart) 
  cart.each do |hash| 
    hash[:count] = 1 
  end 
  return cart 
end 

#item_in_bigarray?("CANNED CORN" , grocery_shelf) 
#add_count_to_cart(grocery_shelf)  

def consolidate_cart(cart)
  final_cart = []
  cart = add_count_to_cart(cart)
  cart.each do |itemhash| 
    if item_in_bigarray?(itemhash[:item],final_cart)  
      ind = final_cart.index(itemhash) 
      final_cart[ind][:count] += 1 
    else final_cart.push(itemhash) 
    end 
  end 
    print final_cart
    return final_cart 
end

unconcart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
]

consolidate_cart(unconcart)