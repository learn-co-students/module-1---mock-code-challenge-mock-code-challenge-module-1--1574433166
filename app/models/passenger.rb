class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << name
    end

    def rides
        ride_array = Ride.all.select {|ride|
        ride.passenger == self
        }
        ride_array
    end

    # def drivers
    #     driver_array = 
    # end

    def total_distance
        total_distance = 0
        while rides.count
            total_distance += total_distance
        end
    end

    def self.all
        @@all
    end

end
