#working with the bills calls to api
require './congress'

congress = Congress.new

congress.load_bills

puts congress.bills.class

congress.bills.each do |bill|
  puts "Bill ID: #{bill['bill_id']}"
  puts "========================="
end
