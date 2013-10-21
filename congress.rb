require './request'
require './factory'

class Congress
  attr_accessor :legislators

  def initialize()
    @legislators = []
  end

  def load_legislators()
    params = {'per_page' => 'all'}
    request = Request.new('legislators',params)
    response = request.send()
    factory = Factory.new()
    @legislators = factory.legislators(response)
  end

  def load_legislators_zip(zip_code)
    params = {'per_page' => 'all'}
    params['zip'] = zip_code
    request = Request.new('legislators/locate',params)
    response = request.send()
    factory = Factory.new()
    @legislators = factory.legislators(response)
  end

  def load_legislators_location(location)
    params = {'per_page' => 'all'}
    params['latitude'] = location['latitude']
    params['longitude'] = location['longitude']
    request = Request.new('legislators/locate',params)
    response = request.send()
    factory = Factory.new()
    @legislators = factory.legislators(response)
  end

end
