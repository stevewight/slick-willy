class District
  attr_accessor :state
  attr_accessor :number  

  def initialize(item)
    @state = item['state']
    @number = item['district']
  end

end
