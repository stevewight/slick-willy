#working with the bills calls to api
require './congress'

congress = Congress.new

#congress.load_bills
congress.load_bills_enacted(113)
#congress.load_bills_type('hr')
#congress.load_bills_party('D')

puts "Count: #{congress.bills.size}"

congress.bills.each do |bill|
  puts "Bill ID: #{bill['bill_id']}"
  puts "Chamber: #{bill['chamber']}"
  puts "Type: #{bill['bill_type']}"
  puts "URLS:"
  puts " #{bill['urls']['congress']}"
  puts " #{bill['urls']['govtrack']}"
  puts " #{bill['urls']['opencongress']}"
  puts "========================="
end
