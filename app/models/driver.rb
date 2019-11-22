class Driver
    attr_accessor :name
    attr_reader
    attr_writer

    @@all = []
    def initialize(name)
        @name = name 

        @@all << self
    end

    def rides
        #returns an array of all rides given by driver
        Ride.all.select {|rides| rides.driver == self}
    end

    def passenger_names
        #returns an array of all passengers driven *UNIQUE*
        rides.map {|rides| rides.passenger}.uniq 
    end

    def total_distance
        rides.map {|rides| rides.distance}.inject(:+)
    end

    def self.all
        @@all
    end

    def self.mileage_cap(miles)
        # Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
        all.select{|drivers| drivers.total_distance > miles}

    end

end
