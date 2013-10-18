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
    legislators.each do |legislator|
      bday = DateTime.strptime(legislator['birthday'],age_format)
      birthday = Date.parse(legislator['birthday'])
      puts "birfday class: #{birthday.class}"
      puts "birfday obj: #{birthday}"
    end
  end

end
