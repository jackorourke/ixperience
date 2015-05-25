# cart.rb

class Cart
  def initialize()
    @items = []       #@items is an Array<Item>
  end

  # @return{Array<Item>}
  #   The items and their quantities in the cart, keyed by item name.
  def items
    @items
  end

  # @return{float} The total price of all the goods in the cart.
  def total_price
    total = 0
    @items.each do |item|
      total = total + item.price
    end
    total
  end

  # @param{Item} item The item to add.
  def add(item)
    @items.push(item)
  end

  # @param{Item} item The item to remove.
  def remove(item)
    @items.delete(item)
  end
end