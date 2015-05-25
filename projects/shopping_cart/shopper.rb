class Shopper
	def initialize(first_name, options = {})
		@first_name = first_name
		@last_name = options[:last_name]
		@money = options[:money] || 100
		@cart = Cart.new
	end

	def add_to_cart(item)
		@cart.add(item)
	end

	def remove_from_cart(item)
		@cart.remove(item)
	end

	def checkout
		if @money >= @cart.total_price
			@money = @money - @cart.total_price
			@cart.items.clear
		end
	end

	# Accessors
	#Have methods to get a first_name, 
	#last_name and money, and a full_name method

	def first_name
		@first_name
	end

	def last_name
		@last_name
	end

	def money
		@money
	end

	def full_name
		"#{@first_name} #{@last_name}"
	end

end