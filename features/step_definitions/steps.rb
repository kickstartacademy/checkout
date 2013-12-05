Given(/^the price of a cucumber is (\d+)p$/) do |unit_price|
  @unit_price = Integer(unit_price)
end

When(/^the customer purchases (\d+) cucumbers?$/) do |quantity|
  @quantity = Integer(quantity)
end

Then(/^the total is (\d+)p$/) do |expected_total|
  expected_total = Integer(expected_total)
  
  checkout = Checkout.new(@unit_price)
  
  total = checkout.total(@quantity)
  
  expect(total).to eq(expected_total)
end

class Checkout
  def initialize(unit_price)
    @unit_price = unit_price
  end
  
  def total(quantity)
    @unit_price * quantity
  end
end








