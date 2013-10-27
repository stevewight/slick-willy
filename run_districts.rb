require './congress'

congress = Congress.new

congress.load_districts_zip('94005')

congress.districts.each do |district|
  puts district['state']
  puts district['district']
  puts '------------------'
end
