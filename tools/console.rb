require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

driver1 = Driver.new("tony")
driver2 = Driver.new("matt")
driver3 = Driver.new("alex")

pass1 = Passenger.new("shakil")
pass2 = Passenger.new("gabbie")
pass3 = Passenger.new("superman")

ride1 = Ride.new(pass1, driver1, 50.3)
ride2 = Ride.new(pass1, driver2, 60)
ride3 = Ride.new(pass2, driver2, 38)
ride4 = Ride.new(pass3, driver3, 55)
ride5 = Ride.new(pass3, driver2, 72)
ride6 = Ride.new(pass1, driver2, 29)


binding.pry
