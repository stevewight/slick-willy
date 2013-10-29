require './config'
require 'net/http'

class Request
  attr_accessor :get_path  

  def initialize(path,params)
    params['apikey'] = API_KEY
    build(path,params)
  end

  def build(path,params)
    @get_path = BASE_API << path
    if params.size > 0
      @get_path << '?'
      params.each do |k,v|
        @get_path << "#{k}=#{v}&"
      end
    end
  end

  def send()
    puts @get_path
    uri = URI(@get_path)
    response = Net::HTTP.get(uri)
  end

end
