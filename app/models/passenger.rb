class Passenger

    attr_accessor :driver
    attr_reader :name


    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all 
        @@all
    end

    def self.premium_members
        var = Ride.all.select do |ride|
            ride.distance > 100
        end
        var.map do |big_ride|
            big_ride.passenger
        end
    end

        # premium_rides = []
        # Ride.all.each do |ride| 
        #     if ride.distance > 100
        #     premium_rides << ride 
        #     premiums_rides.map do |premium|
        #         premium.passenger
        #     end
        
    
    

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        rides.map do |ride|
            ride.driver
        end
    end

    def total_distance
        total = 0
        rides.each do |ride|
            total += ride.distance
        end
        total
    end
end


    

