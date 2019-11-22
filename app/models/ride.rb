class Ride
    attr_reader :passenger, :driver, :distance
    @@all = []
    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        driver.mileage += distance
        driver.rides << self
        passenger.rides << self
        passenger.drivers << driver
        passenger.total_distance += distance
        @@all << self
    end
    def self.average_distance
        (@@all.map{|ride| ride.distance}).reduce(:+)
    end
    def self.all
        @@all
    end
end