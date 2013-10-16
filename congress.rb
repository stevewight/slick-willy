require './request'
require './factory'

class Congress
  attr_accessor :legislators

  def initialize()
    @legislators = []
    puts 'initialized congress'
  end

  def get_all()
    params = {'apikey'=> API_KEY, 'per_page' => 'all'}
    request = Request.new('legislators',params)
    response = request.send()
    factory = Factory.new()
    @legislators = factory.legislators(response)
  end

end
