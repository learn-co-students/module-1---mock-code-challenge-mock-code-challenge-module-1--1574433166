class Passenger

    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self 
    end 

    def self.all 
        @@all 
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self 
        end
    end

    def drivers
        d = rides.map do |ride|
            ride.driver
        end
        d.uniq
    end

    def total_distance
        total = 0
        rides.each {|ride| total += ride.distance}
        total.to_f
    end

    def self.premium_members
        Ride.all.select do |ride|
            ride.passenger.total_distance >= 100
        end
    end
end
