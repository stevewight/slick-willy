require './request'

class Congress

  def initialize()
     
  end

  def get_all()
    params = {'apikey'=> API_KEY, 'per_page' => 'all'}
    request = Request.new('legislators',params)
  end

end
