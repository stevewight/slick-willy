slick-willy
===========

Better understanding United States law makers through data

<h2>Usage</h2>
<p>To see a sample use of accessing the Congress API execute any of the run scripts:</p>
````` bash
ruby run_legislators.rb
`````
Other run scripts:
<ul>
  <li>run_bills.rb</li>
  <li>run_committees.rb</li>
  <li>run_votes.rb</li>
  <li>run_districts.rb</li>
</ul>

<h3>Loading All Current Legislators</h3>
`````ruby
require './congress'

congress = Congress.new
congress.load_legislators()
congress.legislatros.each do |legislator|
  puts "#{legislator.first_name} #{legislator.last_name}"
end

`````

<h3>Loading All Active Bills</h3>
`````ruby
require './congress'

congress  = Congress.new
congress.load_bills()
congress.bills.each do |bill|
  puts "Bill ID: #{bill.bill_id}"
  puts "Chamber: #{bill.chamber}"
end
`````

<h3>Loading Recent Votes for a Given Chamber</h3>
`````ruby
require './congress'

congress = Congress.new
congress.load_votes('house')
congress.votes.each do |vote|
  puts "Bill ID: #{vote.bill_id}"
  puts "Result: #{vote.result}"
end
`````

<h3>Loading Districts for Given Zip Code</h3>
`````ruby
require './congress'

congress = Congress.new
congress.load_districts_zip('94005')
congress.districts.each do |district|
  puts "State: #{district.state}"
  puts "Number: #{district.number}"
end
`````

<h3>Loading Committees for a Given Chamber</h3>
`````ruby
requre './congress'

congress = Congress.new
congress.load_committees('house')
congress.committees.each do |committee|
  puts "Name: #{committee.name}"
  puts "ID: #{committee.committee_id}"
end
`````

<p><span>note:</span>You must sign up for a free api key at <a href="http://sunlightfoundation.com/api/">Sunlight Foundation</a> and place it in a file (you must create) called config.rb.  Your config.rb file should look like this:</p>

`````ruby
API_KEY = "THIS_IS_WHERE_YOUR_PERSONAL_API_KEY_GOES"
BASE_API = "http://congress.api.sunlghtfoundation.com"

`````
