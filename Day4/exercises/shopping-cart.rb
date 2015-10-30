class ShoppingCart
	
	def initialize 
		@cart = []
		@total_price = 0
	end

	def add_item_to_cart product
		@cart << product
	end

	def show
		@cart.each do |item|
			replay_arr = @cart.select do |name|
				item.name == name
			end
			puts "#{replay_arr.length}  #{item.name}:  #{item.price}"
		end
	end
	
	def cost
		@cart.reduce(0) do |memo, item|
			memo + item.price
		end
	end

	def show_cost
		puts "Total cost: #{cost}"
	end
end

class Product
	attr_reader :name, :price
	def initialize name,price
		@name = name
		@price = price
	end
end

cart = ShoppingCart.new

apple = Product.new("apple",10)
grapes = Product.new("banana",20)
banana = Product.new("banana",20)


cart.add_item_to_cart(apple)
cart.add_item_to_cart(banana)
cart.add_item_to_cart(banana)

cart.show

cart.show_cost
