require 'rubygems'
require 'congress'
require './config'

Congress.key = API_KEY
legislators = Congress.legislators
bills = Congress.bills
votes = Congress.votes 

puts "count: #{legislators.length}"
puts "class: #{legislators.class}"
puts "=========================="
puts "bills: #{bills.length}"
puts "class: #{bills.class}"
puts "++++++++++++++++++++++++++"
puts "votes: #{votes.length}"
puts "class: #{votes.class}"
