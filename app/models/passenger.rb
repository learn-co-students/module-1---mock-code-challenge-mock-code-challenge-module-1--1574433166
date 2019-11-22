class Passenger
    
    attr_accessor :passenger

    @@all = []

    def initialize(passenger)
        @passenger = passenger
        
        @@all << self
    end

    def self.all
        #Passenger.all
        @@all
    end

    def pass_rides
        #Passenger#rides
        Ride.all.select do |person|
        person.driver == self
        end
    end

    def pass_drivers
        #Passenger#drivers
        pass_rides.map do |share|
        share.driver
        end
    end

    def pass_distance
        #Passenger#total_distance
    end

    def self.premium_members
        #Passenger.premium_members
    end
end
