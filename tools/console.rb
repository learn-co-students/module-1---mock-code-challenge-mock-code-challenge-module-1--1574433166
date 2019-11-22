require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
driver1 = Driver.new("Edward")
driver2 = Driver.new("Tony")
driver3 = Driver.new("Kevin")

passenger1 = Passenger.new("Juliana")
passenger2 = Passenger.new("James")
passenger3 = Passenger.new("Some_dude")

ride1 = Ride.new("Edward", "Juliana", 56)
ride2 = Ride.new("Tony", "James", 34)
ride3 = Ride.new("Kevin", "Some_dude", 48)

binding.pry
