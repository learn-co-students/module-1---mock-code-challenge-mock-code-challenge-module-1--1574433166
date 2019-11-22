require_relative '../config/environment'


def reload
  load 'config/environment.rb'
end





driver1 = Driver.new("alan")
driver2 = Driver.new("helen")
passenger1 = Passenger.new("casey")
passenger2 = Passenger.new("shakil")
passenger3 = Passenger.new("tony")
ride1 = Ride.new(passenger1,driver1,5)
ride2 = Ride.new(passenger2,driver2,20)
ride3 = Ride.new(passenger2,driver1,30)
binding.pry

puts 'goodbye!'