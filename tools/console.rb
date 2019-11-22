require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
 
cat = Passenger.new("Cat")
bob = Passenger.new("Bob")
sam = Passenger.new("Sam")
pop = Passenger.new("Pop")
# Put your variables here~!
dan = Driver.new("Dan")
tim = Driver.new("Tim")
jim = Driver.new("Jim")
jen = Driver.new("Jen")

d1 = Ride.new(tim, cat, 20)
d2 = Ride.new(dan, cat, 23)
d3 = Ride.new(jim, bob, 10)
d4 = Ride.new(jen, pop, 20)
d5 = Ride.new(tim, sam, 12)




binding.pry
dfgh
