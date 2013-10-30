require './congress'

congress = Congress.new

location = {"latitude"=>"37.6860","longitude"=>"-122.402"}

#congress.load_districts_zip('94005')
congress.load_districts_location(location)

congress.districts.each do |district|
  puts district.state
  puts district.number
  puts '------------------'
end
