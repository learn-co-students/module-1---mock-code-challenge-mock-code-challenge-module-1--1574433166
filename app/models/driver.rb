class Driver

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
            ride.driver == self
        end
    end

    def passenger_names
        p = rides.map do |ride|
            ride.passenger 
        end
        p.uniq
    end

end
