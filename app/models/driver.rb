class Driver
    @@all = []
    attr_reader :name, :passenger_names, :rides

    def initialize(name, passenger_names, rides)
        @name = name
        @passenger_names = passenger_names
        @rides = rides
        @@all << self
    end 

    def passenger_names 
        Passenger.all.select do |passenger|
            ride.self =         
        end 
    end 

    def driver_mileage_cap(distance)
    end 

    def driver_rides
    end 

end 