
class Passenger
    attr_reader :name
    attr_accessor :driver, :distance

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.new.all(driver, self, distance)
    end 

    def drivers
        new_array = Ride.all.select {|ride| ride.passenger == self}
        new_array.map {|ride| ride.driver}
    end


    def total_distance
        new_array = Ride.all.select {|ride| ride.passenger == self}
        (new_array.map {|ride| ride.distance}).sum
    
    end 

    def self.all
        @@all 
    end

    def self.premium_members
    end
end 