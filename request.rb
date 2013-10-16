require './config'

class Request
  attr_accessor :get_path  

  def initialize(path,params)
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
    puts "get_path: #{@get_path}"
  end

end
