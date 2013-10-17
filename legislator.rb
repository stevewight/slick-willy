class Legislator
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :gender
  attr_accessor :party
  attr_accessor :state
  attr_accessor :chamber

  def initialize(item)
    @first_name = item['first_name']
    @last_name = item['last_name']
    @gender = item['gender']
    @party = item['party']
    @state = item['state']
    @chamber = item['chamber']
  end

end
