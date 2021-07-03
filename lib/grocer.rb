require "pry"

def find_item_by_name_in_collection(name, collection)
  for item in collection do
    return item if item[:item] == name
  end 
  nil
end

def consolidate_cart(cart)
  receipt = []
  for item in cart do 
    item_info = find_item_by_name_in_collection(item[:item], receipt)
    if item_info 
      item_info[:count] += 1
    else 
      item[:count] = 1
      receipt.push(item)
    end 
  end 
end