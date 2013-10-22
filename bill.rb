class Bill
  attr_accessor :last_version
  attr_accessor :cosponsors_count
  attr_accessor :enacted_as
  attr_accessor :congress
  attr_accessor :committee_ids
  attr_accessor :related_bill_ids
  attr_accessor :last_action_at
  attr_accessor :history
  attr_accessor :short_title
  attr_accessor :popular_title
  attr_accessor :number
  attr_accessor :urls
  attr_accessor :withdrawn_cosponsors_count
  attr_accessor :bill_type
  attr_accessor :sponsor_id
  attr_accessor :last_version_on
  attr_accessor :introduced_on
  attr_accessor :bill_id
  attr_accessor :official_title
  attr_accessor :last_vote_at
  attr_accessor :chamber


  def initialize(item)
    @last_version = item['last_version']
    @cosponsors_count = item['cosponsors_count']
    @enacted_as = item['enacted_as']
    @congress = item['congress']
    @committee_ids = item['committee_ids']
    @related_bill_ids = item['related_bill_ids']
    @last_action_at = item['last_action_at']
    @history = item['history']
    @short_title = item['short_title']
    @popular_title=  item['popular_title']
    @number = item['number']
    @urls = item['urls']
    @withdrawn_cosponsors_count = item['withdrawn_cosponsosrs_count']
    @bill_type = item['bill_type']
    @sponsor_id = item['sponsor_id']     
    @introduced_on = item['introduced_on']
    @bill_id = item['bill_id']
    @official_title = item['official_title']
    @last_vote_at = item['last_vote_at']
    @chamber = item['chamber']
  end
 
end
