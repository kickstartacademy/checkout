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
