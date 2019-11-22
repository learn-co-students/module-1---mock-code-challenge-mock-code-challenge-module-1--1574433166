class Driver

        attr_accessor :driver_name

        @@all = []
        def initialize(driver_name)
            @driver_name = driver_name
            @@all << self
        end

        def passenger_names
            if Ride.all.select {|driver_name| self.driver_name == all.driver}
            passengers << all.name
        end
        end

        def rides
            Ride.all.select {|driver_name| self.driver_name == all.driver_name}}
        end

        def self.all
            @@all
        end

        def self.milelage(milelage)

        end
end
