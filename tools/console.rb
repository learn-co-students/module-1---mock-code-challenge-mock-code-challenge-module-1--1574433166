require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Put your variables here~!

passenger1 = Passenger.new("Holden")
passenger2 = Passenger.new("Naomi")
passenger3 = Passenger.new("Amos")

driver1 = Driver.new("Alex")
driver2 = Driver.new("Bobbie")
driver3 = Driver.new("Avasarala")

ride1 = Ride.new(driver1, passenger2, 16.1)
ride2 = Ride.new(driver2, passenger3, 10.7)
ride3 = Ride.new(driver3, passenger1, 19.3)
ride4 = Ride.new(driver3, passenger2, 15.2)
ride5 = Ride.new(driver2, passenger3, 17.8)
ride6 = Ride.new(driver1, passenger1, 11.4)
ride7 = Ride.new(driver3, passenger2, 16.7)

binding.pry
