require 'date'
 
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

  def chamber(legislators)
    senate = 0
    house = 0
    legislators.each do |legislator|
      if legislator['chamber'] == 'house'
        house += 1
      elsif legislator['chamber'] == 'senate'
        senate += 1
      end
    end
    {'house'=> house, 'senate'=>senate}
  end 

  def age(legislators)
    age_format = '%Y-%m-%d'
    time = Time.now
    young = 0 #39 and under
    old = 0 #40-54
    real_old = 0 #55-70
    crazy_old = 0 #71 and over
    legislators.each do |legislator|
      bday = DateTime.strptime(legislator['birthday'],age_format)
      birthday = Date.parse(legislator['birthday'])
      age = time.year - birthday.year
      if age < 36
        young += 1
      elsif age < 54
	old += 1
      elsif age < 70
        real_old += 1
      else
        crazy_old += 1
      end
    end
    {'young' => young, 'old' => old, 'real_old' => real_old, 'crazy_old' => crazy_old}
  end

  def states(legislators)
    state_set = {}
    legislators.each do |legislator|
      if state_set.has_key?(legislator['state'])
        state_set[legislator['state']] += 1
      else
        state_set[legislator['state']] = 0
      end
    end
    state_set
  end

end
