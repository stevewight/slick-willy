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

  def party(legislators)
      dem = 0
      rep = 0
      ind = 0
    legislators.each do |legislator|
      if legislator['party'] == 'D'
        dem += 1
      elsif legislator['party'] == 'R'
        rep += 1
      elsif legislator['party'] == 'I'
        ind += 1
      end
    end
    {'dem' => dem,'rep' => rep,'ind' => ind}
  end

end
