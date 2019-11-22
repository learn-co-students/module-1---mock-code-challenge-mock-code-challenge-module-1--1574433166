class Ride 

    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end 

    def self.all
        @@all
    end 

    

    def self.average_distance
        new_array = @@all.select {|ride| ride.distance}
        new_array.sum / new_array.length
    end 
end 
