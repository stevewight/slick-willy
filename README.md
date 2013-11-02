slick-willy
===========

Better understanding United States law makers through data

<h2>Usage</h2>
<p>To see a sample use of accessing the Congress API execute any of the run scripts</p>

`````ruby
require './congress'

congress = Congress.new
congress.load_legislators()
contress.legislatros.each do |legislator|
  puts "#{legislator.first_name} #{legislator.last_name}"
end

`````

<p>span>note:</span>You must sign up for a free api key at <a href="http://sunlightfoundation.com/api/">Sunlight Foundation</a> and place it in a file (you must create) called config.rb.  Your config.rb file should look like this:</p>

`````ruby
API_KEY = "THIS_IS_WHERE_YOUR_PERSONAL_API_KEY_GOES"
BASE_API = "http://congress.api.sunlghtfoundation.com"

`````
