require_relative '../config/environment.rb'
require_relative  '../app/models/driver.rb'
require_relative  '../app/models/passenger.rb'
require_relative  '../app/models/ride.rb'
require "pry"
def reload
  load 'config/environment.rb'
end


# Put your variables here~!
driver1 = Driver.new("Danica Patrick")
driver2 = Driver.new("Travis Bickle")
driver3 = Driver.new("Mario")

ride1 = Ride.new("Danica Patrick", "Keanu Reeves", 1000.0)
ride2 = Ride.new("Mario", "Rosa Parks", 35.5)
ride3 = Ride.new("Travis Bickle", "Sheldon", 10.7)
ride4 = Ride.new("Travis Bickle", "Rosa Parks", 28.3)

passenger1 = Passenger.new("Keanu Reeves")
passenger2 = Passenger.new("Rosa Parks")
passenger3 = Passenger.new("Sheldon")


binding.pry 
