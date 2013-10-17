require './congress'
require './analysis'

congress = Congress.new
congress.load_legislators()
puts "Legislators Count: #{congress.legislators.size}"

analysis = Analysis.new
genders = analysis.gender(congress.legislators)
puts "Genders:"
puts "---->#{genders['male']} count"
puts "---->#{genders['female']} count"
