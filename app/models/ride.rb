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
        total = 0
        self.all.each do |ride|
        total += ride.distance
        end
        total / self.all.length
    end

end

