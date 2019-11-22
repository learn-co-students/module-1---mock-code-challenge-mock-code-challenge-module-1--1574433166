class Passenger

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
       Ride.all.select {|name| self.name == all.name} 
    end

    def drivers
        
    end

    def total_distance
        
    end

    def self.all
        @@all
    end

    def self.premium_members

    end

end
