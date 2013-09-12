PRODUCT_ID='(\w+?)e?s?'

Given(/^the price of a (\w+) is (\d+) EUR$/) do |product, price|
  add_product Product.new(price, product)
end

Given(/^we have a 2\-for\-1 discount on #{PRODUCT_ID}$/) do |product_id|
  set_discount_on product_id
end

When(/^I scan (\d+) #{PRODUCT_ID}$/) do |number, product_id|
  scan product_id, number
end

Then(/^the total should be (\d+) EUR$/) do |expected_total|
  total.should == expected_total
end

Transform(/^\d+$/) do |raw_number|
  raw_number.to_i
end
