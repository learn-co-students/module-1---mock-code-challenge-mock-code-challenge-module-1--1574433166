class Ride

    attr_accessor :driver_name, :name, :distance

        @@all = []
    def initialize( driver_name, name, distance)
        @driver_name = driver_name
        @name = name
        @distance = distance
        @@all << self
    end

    def self.average_distance
        sum = 0
        @@all.distance.each  {|distance| sum += @@all.distance}
            sum / @@ll.distance.length
        
    end

end
