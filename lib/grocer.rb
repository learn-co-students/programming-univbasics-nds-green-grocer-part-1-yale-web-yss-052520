def find_item_by_name_in_collection(name, collection)
  collection.find { |hash| hash[:item] == name }
end

def consolidate_cart(cart)
  cart.each_with_object([]) do |hash, sorted_cart|
    if find_item_by_name_in_collection(hash[:item], sorted_cart)
      sorted_cart.each do |item|
        if item[:item] == hash[:item]
          item[:count] += 1
        end
      end
    else
      updated_item = {}.update(hash)
      updated_item[:count] = 1
      sorted_cart.push(updated_item)
    end
  end
end