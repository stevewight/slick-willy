require './congress'

congress = Congress.new
congress.get_all()
puts "Legislators Count: #{congress.legislators.size}"
