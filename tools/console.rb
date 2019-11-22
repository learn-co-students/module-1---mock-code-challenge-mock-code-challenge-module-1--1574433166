require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

passenger1 = Passenger.new("Henry")
passenger2 = Passenger.new("Kiaora")
passenger3 = Passenger.new("Zoe")
passenger4 = Passenger.new("Abi")
passenger5 = Passenger.new("Crump")

driver1 = Driver.new("Nate")
driver2 = Driver.new("Hannah")
driver3 = Driver.new("Jill")
driver4 = Driver.new("Jason")
driver5 = Driver.new("Anthony")

ride1 = Ride.new(driver1, passenger2, 3.0)
ride2 = Ride.new(driver2, passenger3, 42.0)
ride3 = Ride.new(driver3, passenger4, 9.1)
ride4 = Ride.new(driver4, passenger5, 15.0)
ride5 = Ride.new(driver5, passenger2, 7.2)



# Put your variables here~!

binding.pry
