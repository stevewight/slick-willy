class Vote
  attr_accessor :voted_at
  attr_accessor :url
  attr_accessor :chamber
  attr_accessor :source
  attr_accessor :roll_type
  attr_accessor :bill_id
  attr_accessor :year
  attr_accessor :roll_id
  attr_accessor :result
  attr_accessor :required
  attr_accessor :question
  attr_accessor :number
  attr_accessor :congress
  attr_accessor :vote_type

  def initialize(item)
    @voted_at = item['voted_at']
    @url = item['url']
    @chamber = item['chamber']
    @source = item['source']
    @roll_type = item['roll_type']
    @bill_id = item['bill_id']
    @year = item['year']
    @roll_id = item['roll_id']
    @result = item['result']
    @required = item['required']
    @question = item['question']
    @number = item['number']
    @congress = item['congress']
    @vote_type = item['vote_type']
  end

end
