require './congress'

congress = Congress.new
#congress.load_committees('house')
congress.load_committees_member('L000551')

puts congress.committees.size
