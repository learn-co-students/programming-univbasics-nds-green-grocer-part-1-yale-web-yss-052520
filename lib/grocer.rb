require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.detect { |item| item[:item]==name }
end

def consolidate_cart(cart)
  new_cart=[]
  #binding.pry
  while cart[0] do
    first_new_item=cart[0]
    num_of_that_item=(cart.select {|e| e[:item]==first_new_item[:item]}).length
    first_new_item[:count]=num_of_that_item
    new_cart<<first_new_item
    cart.reject! {|e| e[:item]==first_new_item[:item]}
    cart.compact!
  #  binding.pry
  end
  #binding.pry
  new_cart
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  #consolidated_cart=[]
  #cart.each do |item_hash|
  #  item_name=item_hash[:item]
  #  item_found=find_item_by_name_in_collection(item_name, consolidated_cart)
  #  if item_found
  #    consolidated_cart = consolidated_cart.map do |item_in_cart|
  #      if item_in_cart[:item]==item_name
  #        binding.pry
  #        item_in_cart[:count]+=1
  #      end
  #    end
  #  else
  #    item_hash[:count]=1
  #    consolidated_cart << item_hash
  #  end
  #  consolidated_cart
  #end
end

CART=[
  {:item => "AVOCADO", :price => 3.00, :clearance => true},
  {:item => "KALE", :price => 3.00, :clearance => false},
  {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
  {:item => "ALMONDS", :price => 9.00, :clearance => false},
  {:item => "TEMPEH", :price => 3.00, :clearance => true},
  {:item => "CHEESE", :price => 6.50, :clearance => false},
  {:item => "BEER", :price => 13.00, :clearance => false},
  {:item => "PEANUTBUTTER", :price => 3.00, :clearance => true},
  {:item => "BEETS", :price => 2.50, :clearance => false},
  {:item => "SOY MILK", :price => 4.50, :clearance => true}
]

#CART2=[find_item_by_name_in_collection('AVOCADO', CART), find_item_by_name_in_collection('AVOCADO', CART), find_item_by_name_in_collection('KALE', CART)]
#puts CART2
#consolidate_cart(CART2)
