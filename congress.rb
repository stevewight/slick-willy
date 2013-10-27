require './request'
require './factory'
require 'net/http'

class Congress
  attr_accessor :legislators
  attr_accessor :bills
  attr_accessor :votes

  def initialize()
    @legislators = []
    @bills = []
    @votes = []
  end

  #loads all the current legislators
  def load_legislators()
    params = {'per_page' => 'all'}
    @legislators = process('legislators', 'legislators', params)
  end

  #loads all the legislators for given zip code
  def load_legislators_zip(zip_code)
    params = {'per_page' => 'all'}
    params['zip'] = zip_code
    path = 'legislators/locate'
    @legislators = process('legislators', path, params)
  end

  #loads all legislators for given lat/lng location
  def load_legislators_location(location)
    params = {'per_page' => 'all'}
    params['latitude'] = location['latitude']
    params['longitude'] = location['longitude']
    path = 'legislators/locate'
    @legislators = process('legislators', path, params)
  end

  #loads active bills orderd by recent activity
  def load_bills()
    params = {'history.active' => true}
    params['order'] = 'last_action_at'
    @bills = process('bills', 'bills', params)
  end

  #loads bills enacted by given congress(#)
  def load_bills_enacted(congress=nil)
    params = {'congress' => congress}
    params['history.enacted'] = true
    @bills = process('bills', 'bills', params)
  end

  #loads bills based on sponsored party
  def load_bills_party(party)
    params = {'sponsor.party' => party}
    @bills = process('bills', 'bills', params)
  end

  #loads bills based on search query
  def load_bills_search(query, enacted = true)
    query = URI.escape(query)
    params = {'query' => query}
    params['history.enacted'] = true if enacted
    @bills = process('bills', 'bills/search', params)  
  end
 
  #loads upcoming bills (some bill data different!)
  def load_bills_upcoming(chamber)
    params = {'chamber' => chamber}
    @bills = process('upcoming_bills', 'upcoming_bills', params)
  end

  #loads recent votes for given chamber
  def load_votes(chamber)
    params = {'chamber' => chamber}
    params['order'] = 'voted_at'
    @votes = process('votes', 'votes', params)
  end

  def process(method, path, params)
    request = Request.new(path, params)
    response = request.send()
    puts response.class
    factory = Factory.new()
    factory.send(method, response)
  end

end
