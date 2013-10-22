#working with the bills calls to api
require './congress'

congress = Congress.new

congress.load_bills
