class SuperShopper < Shopper
	def initialize(first_name, options = {})
		@first_name = first_name
		@last_name = options[:last_name]
		@money = options[:money] || 100
		@cart = Cart.new
	end


	def checkout
		if @money >= (0.9 * @cart.total_price)
			@money = @money - (0.9 * @cart.total_price)
			@cart.items.clear
		end
	end

	def get_money(options = {})
		if options.has_key? :money
			@money += options[:money]
		else
			@money += 100
		end
	end

end