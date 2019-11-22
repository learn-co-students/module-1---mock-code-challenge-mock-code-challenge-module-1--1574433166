class Ride

    attr_accessor :passenger, :driver
    attr_reader :distance

   @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def self.total_distance
        distance = 0.0
        self.all.each do |ride|
            distance += ride.distance
        end 
        distance 
    end 

    def self.average_distance
        total_distance / self.all.length
    end 

end 
