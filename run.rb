require 'net/http'
require './config'

BASE_API = "http://congress.api.sunlightfoundation.com/"

url = BASE_API << '/legislators?apikey=' << API_KEY
uri = URI(url)
raw = Net::HTTP.get(uri)
puts raw
