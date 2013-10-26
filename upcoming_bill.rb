class UpcomingBill
  attr_accessor :chamber
  attr_accessor :url
  attr_accessor :source_type
  attr_accessor :congress
  attr_accessor :range
  attr_accessor :legislative_day
  attr_accessor :bill_id  

  def initialize(item)
    @chamber = item['chamber']
    @url = item['url']
    @source_type = item['source_type']
    @congress = item['congress']
    @range = item['range']
    @legislative_day = item['legislative_day']
    @bill_id = item['bill_id']
  end

end
