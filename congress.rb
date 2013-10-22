require './request'
require './factory'

class Congress
  attr_accessor :legislators
  attr_accessor :bills

  def initialize()
    @legislators = []
    @bills = []
  end

  #loads all the current legislators
  def load_legislators()
    params = {'per_page' => 'all'}
    request = Request.new('legislators',params)
    response = request.send()
    factory = Factory.new()
    @legislators = factory.legislators(response)
  end

  #loads all the legislators for given zip code
  def load_legislators_zip(zip_code)
    params = {'per_page' => 'all'}
    params['zip'] = zip_code
    request = Request.new('legislators/locate',params)
    response = request.send()
    factory = Factory.new()
    @legislators = factory.legislators(response)
  end

  #loads all legislators for given lat/lng location
  def load_legislators_location(location)
    params = {'per_page' => 'all'}
    params['latitude'] = location['latitude']
    params['longitude'] = location['longitude']
    request = Request.new('legislators/locate',params)
    response = request.send()
    factory = Factory.new()
    @legislators = factory.legislators(response)
  end

  #loads active bills orderd by recent activity
  def load_bills()
    params = {'history.active' => true}
    params['order'] = 'last_action_at'
    request = Request.new('bills',params)
    response = request.send()
    factory = Factory.new()
    @bills = factory.bills(response)
  end

  #loads bills enacted by given congress(#)
  def load_bills_enacted(congress=nil)
    params = {'congress' => congress}
    params['history.enacted'] = true
    request = Request.new('bills',params)
    response = request.send()
    factory = Factory.new()
    @bills = factory.bills(response)
  end
  
end
