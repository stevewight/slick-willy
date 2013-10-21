require './congress'
require './analysis'

congress = Congress.new
zip_code = '93035'
#congress.load_legislators()
congress.load_legislators_zip(zip_code)
puts "Legislators Count: #{congress.legislators.size}"
puts "for zip code: #{zip_code}"

analysis = Analysis.new
genders = analysis.gender(congress.legislators)
puts "Genders:"
puts "---->#{genders['male']} males"
puts "---->#{genders['female']} females"

partys = analysis.party(congress.legislators)
puts "Partys:"
puts "---->#{partys['dem']} democrats"
puts "---->#{partys['rep']} republicans"
puts "---->#{partys['ind']} independents"

chambers = analysis.chamber(congress.legislators)
puts "Chambers:"
puts "---->#{chambers['senate']} in senate"
puts "---->#{chambers['house']} in house"

age = analysis.age(congress.legislators)
puts "Age:"
puts "---->#{age['young']} [under 36]"
puts "---->#{age['old']} [36-->54]"
puts "---->#{age['real_old']} [55-->69]"
puts "---->#{age['crazy_old']} [70+]"

states = analysis.states(congress.legislators)
puts "State:"
states.each do |k,v|
  puts "#{k} = #{v} "
end
