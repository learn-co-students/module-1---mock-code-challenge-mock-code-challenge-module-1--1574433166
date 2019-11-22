class Ride
    attr_accessor :passenger, :driver, :distance

    @@all = [] 
    
    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance

        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        #average distance of all rides
        array_distance = all.map {|rides| rides.distance}
        array_distance.inject(:+) / array_distance.length
    end

end
