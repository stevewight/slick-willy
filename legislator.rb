class Legislator
  attr_accessor :first_name
  attr_accessor :middle_name
  attr_accessor :last_name
  attr_accessor :gender
  attr_accessor :party
  attr_accessor :state
  attr_accessor :chamber
  attr_accessor :birthday

  def initialize(item)
    @first_name = item['first_name']
    @middle_name = item['middle_name']
    @last_name = item['last_name']
    @gender = item['gender']
    @party = item['party']
    @state = item['state']
    @chamber = item['chamber']
    @birthday = item['birthday']
  end

end
