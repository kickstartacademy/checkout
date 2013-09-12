class Product
	attr_accessor :price,:id
	def initialize(price, id)
		@price = price
		@id = id
	end
end

class Checkout
	attr_accessor :total
	def initialize
		@total = 0
	end

	def scan(product, quantity)
		@total += product.price * quantity
	end
end

class Inventory
  def initialize
  	@products = {}
  end

  def add(product)
  	@products[product.id] = product
  end

  def find(id)
  	@products.fetch(id)
  end
end

module CheckoutTestingDSL
	def add_product(product)
		inventory.add product
	end

	def scan(product_id, number)
		product = inventory.find(product_id)
		checkout.scan(product, number)
	end

	def total
		checkout.total
	end

	def checkout
		@checkout ||= Checkout.new
	end

	def inventory
		@inventory ||= Inventory.new
	end
end

World(CheckoutTestingDSL)

Given(/^the price of a (\w+) is (\d+) EUR$/) do |product, price|
	add_product Product.new(price, product)
end

When(/^I scan (\d+) (\w+?)e?s?$/) do |number, product_id|
	scan product_id, number
end

Then(/^the total should be (\d+) EUR$/) do |expected_total|
  total.should == expected_total
end

Transform(/^\d+$/) do |raw_number|
  raw_number.to_i
end
