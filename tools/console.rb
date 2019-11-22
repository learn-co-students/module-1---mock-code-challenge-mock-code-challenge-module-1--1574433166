require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

driver1 = Driver.new("Anna Driver")
driver2 = Driver.new("Ethan Driver")
driver3 = Driver.new("Hayden Driver")
passenger1 = Passenger.new("Julia Passenger")
passenger2 = Passenger.new("Dean Passenger")
ride1 = Ride.new(passenger1, driver1, 81)
ride2 = Ride.new(passenger1, driver2, 20)
ride3 = Ride.new(passenger2, driver3, 49)
ride4 = Ride.new(passenger2, driver3, 3)
ride5 = Ride.new(passenger2, driver3, 1000)
ride6 = Ride.new(passenger1, driver1, 10)
ride7 = Ride.new(passenger1, driver3, 5)

# driver 1 = 91 miles, rode w/ passenger 1
# driver 2 = 20 miles, rode with passenger 1
# driver 3 = 1058 miles, role with passenger 1 and 2 

# passenger 1 = 116 miles, rode with driver1, 2, 3
# passenger 2 = 1052 miles, rode with driver 3

binding.pry
