
class Driver

    attr_accessor :name, :rides, :distance

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end 

    def passenger_names
        new_array = Ride.all.select {|ride| ride.passenger}
        new_array.map {|pass| pass.name}
    end 

    def rides
        Ride.new.all(self, passenger, distance)
    end 

    def self.all
        @@all
    end 

    def self.mileage_cap(distance)
    end
end 