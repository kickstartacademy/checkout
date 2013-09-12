require 'checkout'

describe Checkout do
  it "scans 1 item" do
    # Given
    product = Product.new(5, 'Cucumber')
    checkout = Checkout.new
    # When
    checkout.scan(product, 1)
    # Then
    checkout.total.should == 5
  end

  context "with a discount" do
    it "applies the discount when scanned one by one" do
      product = Product.new(1, 'Cucumber')
      checkout = Checkout.new
      checkout.set_discount_on('Cucumber')
      # When
      checkout.scan(product, 1)
      checkout.scan(product, 1)
      # Then
      checkout.total.should == 1
    end
  end
end