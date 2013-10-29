require './congress'

congress = Congress.new
congress.load_committees('house')

puts congress.committees.size
