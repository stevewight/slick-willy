class Legislator
  attr_accessor :bioguide_id
  attr_accessor :first_name
  attr_accessor :middle_name
  attr_accessor :last_name

  attr_accessor :gender
  attr_accessor :party
  attr_accessor :state
  attr_accessor :state_name
  attr_accessor :district
  attr_accessor :title
  attr_accessor :senate_class
  attr_accessor :state_rank
  attr_accessor :chamber
  attr_accessor :birthday
  attr_accessor :term_start
  attr_accessor :term_end
  attr_accessor :in_office

  attr_accessor :phone
  attr_accessor :website
  attr_accessor :office
  attr_accessor :contact_form
  attr_accessor :fax

  attr_accessor :twitter_id
  attr_accessor :youtube_id
  attr_accessor :facebook_id

  def initialize(item)
    @bioguide_id = item['bioguide_id']
    @first_name = item['first_name']
    @middle_name = item['middle_name']
    @last_name = item['last_name']

    @gender = item['gender']
    @party = item['party']
    @state = item['state']
    @state_name = item['state_name']
    @district = item['district']
    @title = item['title']
    @senate_class = item['senate_class']
    @state_rank = item['state_rank']
    @chamber = item['chamber']
    @birthday = item['birthday']
    @term_start = item['term_start']
    @term_end = item['term_end']
    @in_office = item['in_office']

    @phone = item['phone']
    @website = item['website']
    @office = item['office']
    @contact_form = item['contact_form']
    @fax = item['fax']
    @twitter_id = item['twitter_id']
    @youtube_id = item['youtube_id']
    @facebook_id = item['facebook_id']
  end

end
