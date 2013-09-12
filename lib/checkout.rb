Product = Struct.new(:price, :id)

class Item

  def initialize (product, quantity)
    @product = product
    @quantity = quantity
  end
end

class Checkout
  def initialize
    @products = Hash.new { 0 }
  end

  def scan(product, quantity)
    @products[product] += quantity
  end

  def total
    total = 0
    @products.each do |product, quantity|
      total += price_of(product, quantity)
    end
    total
  end

  def set_discount_on(product_id)
    @discount_product_id = product_id
  end

  private

  def price_of(product, quantity)
    if discounted?(product)
      discount_price(product, quantity)
    else
      product.price * quantity
    end
  end

  def discount_price(product, quantity)
    product.price * ((quantity / 2) + quantity%2)
  end

  def discounted?(product)
    @discount_product_id == product.id
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
