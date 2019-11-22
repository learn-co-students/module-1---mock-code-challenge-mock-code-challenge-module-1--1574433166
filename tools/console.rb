require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!



joe = Driver.new("Joe")
alex = Driver.new("Alex")
tony = Driver.new("Tony")
brenda = Driver.new("Brenda")

passenger1 = Passenger.new("Tim")
passenger2 = Passenger.new("Steve")

passenger3 = Passenger.new("Ken")

ride1 = Ride.new(passenger1, alex, 85)
ride2 = Ride.new(passenger2, joe, 4.5)
ride3 = Ride.new(passenger3, brenda, 101)
ride4 = Ride.new(passenger1, tony, 4.5)
ride6 = Ride.new(passenger2, alex, 250)
ride7 = Ride.new(passenger3, joe, 4.5)






binding.pry
