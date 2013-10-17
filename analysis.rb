class Analysis

  def initialize()
  end

  def gender(legislators)
    male = 0
    female = 0
    legislators.each do |legislator|
      if legislator['gender'] == 'M'
        male += 1
      elsif legislator['gender'] == 'F'
        female += 1
      end
    end
    {'male'=>male, 'female'=>female}
  end

end
