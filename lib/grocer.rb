require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.find do |item|
    item[:item] == name
    # binding.pry
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  cart.each_with_object([]) do |item, consolidated_cart|
    if !find_item_by_name_in_collection(item[:item], consolidated_cart)
      item[:count] = 1
      consolidated_cart.push item
    else
      find_item_by_name_in_collection(item[:item], consolidated_cart)[:count] += 1
    end
  end

end


  