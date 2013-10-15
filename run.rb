require 'rubygems'
require 'net/http'
require 'json'
require './config'

BASE_API = "http://congress.api.sunlightfoundation.com/"

url = BASE_API << '/legislators?apikey=' << API_KEY
uri = URI(url)
raw = Net::HTTP.get(uri)

parsed = JSON.parse(raw)
puts "parsed class: #{parsed.class}"

parsed.each do |key,value|
  puts "key: #{key}"
end

parsed['results'].each do |key,value|
  puts "++++++++++++++++++++++++"
  key.each do |k,v|
    puts "++++item: #{k}-> #{v}"
  end  
  puts "count #{key.length}"

end

puts '----------------------'
puts "count: #{parsed.length}"

