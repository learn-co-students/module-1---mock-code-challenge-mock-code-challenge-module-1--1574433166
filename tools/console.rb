require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

passenger1 = Passenger.new("Alfie")
passenger2 = Passenger.new("Berta")
passenger3 = Passenger.new("Caleb")
passenger4 = Passenger.new("David")
passenger5 = Passenger.new("Elena")

driver1 = Driver.new("Zebulon")
driver2 = Driver.new("Yitzy")
driver3 = Driver.new("Xerxes")
driver4 = Driver.new("Wilbur")
driver5 = Driver.new("Vera")


ride1 = Ride.new(passenger1, driver1, 115.1)
ride2 = Ride.new(passenger2, driver1, 15.1)
ride3 = Ride.new(passenger3, driver1, 2.3)
ride4 = Ride.new(passenger4, driver1, 3.2)
ride5 = Ride.new(passenger1, driver2, 0.7)
ride6 = Ride.new(passenger2, driver2, 1.7)
ride7 = Ride.new(passenger1, driver3, 1.6)
ride8 = Ride.new(passenger2, driver3, 20.1)
ride9 = Ride.new(passenger3, driver3, 3.9)
ride10 = Ride.new(passenger4, driver4, 4.7)
ride9 = Ride.new(passenger5, driver5, 16.8)

binding.pry
