class Driver
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride|
        ride.driver == self
        }
    end
    
    def passenger_names
        rides.map {|ride|
        ride.passenger.name
        }
    end

    def self.mileage_cap(distance)
        @@all.select do |driver|
            miles_driven = 0
            driver.rides.each do |ride|
                miles_driven += ride.distance
            end
            miles_driven > distance
        end
    end
end
