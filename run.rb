require 'pry'
require_relative './guest'
require_relative './listing'
require_relative './trip'

#write your testing code & variables here!

#GUESTS
james = Guest.new("James")
tom = Guest.new("Tom")
ben = Guest.new("Ben")

#LISTINGS
paris = Listing.new("Paris")
tokyo = Listing.new("Tokyo")
london = Listing.new("London")

#TRIPS
trip_1 = Trip.new(paris, james)
trip_2 = Trip.new(tokyo, tom)
trip_3 = Trip.new(london, ben)
trip_4 = Trip.new(paris, tom)
trip_5 = Trip.new(tokyo, james)
trip_6 = Trip.new(london, james)
trip_7 = Trip.new(tokyo, ben)
trip_8 = Trip.new(london, tom)
trip_9 = Trip.new(paris, ben) 




binding.pry
0