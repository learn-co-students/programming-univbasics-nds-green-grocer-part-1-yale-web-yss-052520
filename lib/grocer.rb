def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  counter = 0;
  while counter < collection.size do
    if collection[counter][:item] == name
      return collection[counter]
    end
    counter += 1
  end
  return nil;

end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  arr = []
  counter = 0;
  while counter < cart.size do
    name = cart[counter][:item]
    if find_item_by_name_in_collection(name, arr) == nil
      h = cart[counter]
      h[:count] = 1
      arr << h
    else
      i = 0;
      while i < arr.size do
        if arr[i][:item] == name
          arr[i][:count] += 1
          break
        end
        i += 1
      end
    end
    counter += 1
  end
  arr
end
