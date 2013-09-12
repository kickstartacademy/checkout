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
