require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a1 = Passenger.new("tony")
a2 = Passenger.new("alex")

d1 = Driver.new(a1, d1, 2)
d2 = Driver.new(a2, d2, 3)
binding.pry
