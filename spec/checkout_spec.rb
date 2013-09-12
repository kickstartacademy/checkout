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
end