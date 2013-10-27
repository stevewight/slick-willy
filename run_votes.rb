require './congress'

congress = Congress.new

#congress.load_votes('house')
congress.load_votes_search('internet')
puts congress.votes.count

congress.votes.each do |vote|
  puts vote['voted_at']
  puts vote['chamber']
  puts vote['bill_id']
  puts vote['year']
  puts vote['result']
  puts "================="
end
