require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

passenger1 = Passenger.new("Zalmy")
passenger2 = Passenger.new("Mike")
passenger3 = Passenger.new("Tony")
passenger4 = Passenger.new("Richard")

driver1 = Driver.new("Harry")
driver2 = Driver.new("Hermoine")
driver3 = Driver.new("Hagrid")
driver4 = Driver.new("Ron")

ride1 = Ride.new(driver1, passenger3, 70)
ride2 = Ride.new(driver1, passenger1, 13)
ride3 = Ride.new(driver2, passenger3, 39.4)
ride4 = Ride.new(driver4, passenger2, 38)
ride5 = Ride.new(driver4, passenger2, 35)


binding.pry
