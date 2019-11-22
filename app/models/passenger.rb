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
        drivers = rides.map do |ride|
            ride.driver
        end
        unique_drivers = drivers.uniq
    end 

    def total_distance
        distance = 0.0 
        rides.each do |ride|
            distance += ride.distance
        end 
        distance 
    end 

    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance > 100
         end 
    end 

end 
