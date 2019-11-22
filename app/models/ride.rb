class Ride
   attr_accessor :driver, :passenger
   attr_reader :distance

   @@all = []

   def initialize(driver, passenger, distance)
    @passenger = passenger 
    @driver = driver
    @distance = distance

    @@all << self
   end

   def self.all 
    @@all
   end

   def self.ride_driver
      Ride.all.select do |cab|
        cab.passenger == self
      end
   end

   

end
