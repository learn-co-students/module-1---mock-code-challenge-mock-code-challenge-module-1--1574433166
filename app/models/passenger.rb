class Passenger
    attr_accessor :name
    attr_reader
    attr_writer

    @@all = [] 
    def initialize(name)
        @name = name

        @@all << self
    end

    def rides
        #returns an array of all the rides for a passenger
        Ride.all.select {|rides| rides.passenger == self}
    end

    def drivers
        #returns an array fo all the driver instances passenger has used
        rides.map {|rides| rides.driver}.uniq 

    end

    def total_distance
        #returns float of total distance travelled for passenger
        rides.map {|rides| rides.distance}.inject(:+)

    end

    def self.all
        @@all
    end 

    def self.premium_members
        #returns an array of all passengers who travelled over 100 miles
        all.select{|passenger| passenger.total_distance > 100.00}
    end


end
