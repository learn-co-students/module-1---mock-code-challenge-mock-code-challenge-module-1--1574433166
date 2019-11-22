class Driver

    attr_accessor :name, :distance

    @@all = []
    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        var = Ride.all.select do |ride|
            ride.distance > distance            
        end
        var.map do |big_ride|
            big_ride.driver
        end.uniq

    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end


    

    def passenger_names
        rides.map do |ride|
            ride.passenger.name
        end.uniq
    end





end

