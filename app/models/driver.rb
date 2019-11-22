
class Driver

    attr_accessor :name, :passenger_names, :rides

    @@driver = []
    @passenger_names = []
    @rides = []

    def initialize(name, passenger_names, rides)
        @name = name
        @passenger_names << passenger_names
        @rides = rides

        @@driver << self 
    end

    def rides
        Driver.all.select do |rides|
            Driver(name, passenger_names, self) == rides 
            @rides << rides
        end
    end

    def passenger_names
        Driver.all.select do |passenger_names|
            Driver(name, self, rides) == passenger_names
            @passenger_names << passenger_names
        end
    end
    

    def self.all
        @@driver
    end
end