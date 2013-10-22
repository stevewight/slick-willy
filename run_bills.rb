#working with the bills calls to api
require './congress'

congress = Congress.new

#congress.load_bills
congress.load_bills_enacted(113)

puts "Count: #{congress.bills.size}"

congress.bills.each do |bill|
  puts "Bill ID: #{bill['bill_id']}"
  puts "Chamber: #{bill['chamber']}"
  puts "========================="
end
