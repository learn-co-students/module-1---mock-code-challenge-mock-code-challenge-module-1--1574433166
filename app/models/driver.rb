class Driver
    attr_accessor :rides, :mileage
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @mileage = 0
        @rides = []
        @@all << self
    end
    def self.all
        @@all
    end
    def passenger_names
        (Ride.all.select{|ride| ride.driver == self}).map{|ride| ride.passenger.name}
    end
    def self.mileage_cap(num)
        @@all.select{|driver| driver.mileage > num}
    end
end