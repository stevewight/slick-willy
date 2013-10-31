require './congress'

congress = Congress.new
#congress.load_committees('house')
#congress.load_committees_member('L000551')
congress.load_subcommittees('HSSM')

committees = congress.committees
puts committees.size

committees.each do |committee|
  puts "Name: #{committee.name}"
  puts "ID: #{committee.committee_id}"
  puts "Chamber: #{committee.chamber}"
  puts "Subcommittee: #{committee.subcommittee}"
  puts "---------------------------" 
end
