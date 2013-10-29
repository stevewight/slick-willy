class Committee
  attr_accessor :name
  attr_accessor :committee_id
  attr_accessor :chamber
  attr_accessor :url
  attr_accessor :office
  attr_accessor :phone
  attr_accessor :subcommittee

  def initialize(item)
    @name = item['name']
    @committee_id = item['committee_id']
    @chamber = item['chamber']
    @url = item['url']
    @office = item['office']
    @phone = item['phone']
    @subcommittee = item['subcommittee']
  end

end
