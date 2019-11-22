require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

passenger1 = Passenger.new("kevin", 8, 4)
passenger2 = Passenger.new("pat", 23, 1)
passenger3 = Passenger.new("bob", 3, 2)

driver1 = Driver.new("jay", "ja", 3)
driver2 = Driver.new("joe", "jo", 2)
driver3 = Driver.new("jake", "jak", 1)

ride1 = Ride.new("p1", "d1", 1)
ride2 = Ride.new("p2", "d2", 1)
ride3 = Ride.new("p3", "d3", 1)




binding.pry
