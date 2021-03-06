require './request'
require './factory'
require 'net/http'

class Congress
  attr_accessor :legislators
  attr_accessor :bills
  attr_accessor :votes
  attr_accessor :districts
  attr_accessor :committees

  def initialize()
    @legislators = []
    @bills = []
    @votes = []
    @districts = []
    @committees = []
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
  
  #loads votes for given query string
  def load_votes_search(query)
    query = URI.escape(query)
    params = {'query' => query}
    @votes = process('votes', 'votes', params)
  end

  #loads votes for given legislator id's
  def load_votes_legislator(id)
    id_parm = "voter_ids.#{id.to_s}"
    params = {'voter_ids' => ''} #hack parmas
    @votes = process('votes', 'votes', params)
  end
  
  #loads districts for given zip code
  def load_districts_zip(zip_code)
    params = {'zip' => zip_code}
    @districts = process('districts', 'districts/locate', params)
  end

  #loads districts for given lat/lng location
  def load_districts_location(location)
    params = {'latitude' => location['latitude']}
    params['longitude'] = location['longitude']
    @districts = process('districts', 'districts/locate', params) 
  end

  #loads committees
  def load_committees(chamber)
    params = {'per_page' => 'all'}
    params['chamber'] = chamber
    @committees = process('committees', 'committees', params)
  end

  #loads committees by member_id
  def load_committees_member(id)
    params = {'member_ids' => id}
    @committees = process('committees', 'committees', params)
  end

  def load_subcommittees(parent_id)
    params = {'parent_committee_id' => parent_id}
    @committees = process('committees', 'committees', params)
  end

  #process a request
  def process(method, path, params)
    request = Request.new(path, params)
    response = request.send()
    factory = Factory.new()
    factory.send(method, response)
  end

end
