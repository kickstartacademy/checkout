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
