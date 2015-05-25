require_relative 'item'
require_relative 'cart'
require_relative 'shopper'
require_relative 'super_shopper'

andy = SuperShopper.new("Andy", { last_name: "Bernard"})

milk = Item.new("milk", 1.20)
eggs = Item.new("eggs", 1.30)
# cart = Cart.new
andy.add_to_cart milk
andy.add_to_cart milk
andy.add_to_cart eggs

# andy.remove_from_cart eggs




p andy

puts "\n\n"
andy.checkout

p andy

puts "\n\n"

andy.get_money money: 10

p andy


#p cart.total_price

#cart.remove(milk)
#p cart.total_price

