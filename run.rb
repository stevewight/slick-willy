require 'rubygems'
require 'net/http'
require 'json'
require './config'

BASE_API = "http://congress.api.sunlightfoundation.com/"

#url = BASE_API << '/legislators/locate?zip=90210&apikey=' << API_KEY
url = BASE_API << '/legislators?apikey=' << API_KEY << '&per_page=all'
uri = URI(url)
raw = Net::HTTP.get(uri)

parsed = JSON.parse(raw)
puts "parsed class: #{parsed.class}"

parsed.each do |key,value|
  puts "key: #{key}"
end

parsed['results'].each do |key,value|
  puts "++++++++++++++++++++++++"
  #key.each do |k,v|
  #  puts "++++item: #{k}-> #{v}"
  #end
  puts key['first_name']
  puts key['last_name']
  puts key['gender']
  puts key['party']
  puts key['state']
  puts key['chamber']
  puts '--------------'

end

puts '----------------------'
puts "count: #{parsed['results'].length}"

