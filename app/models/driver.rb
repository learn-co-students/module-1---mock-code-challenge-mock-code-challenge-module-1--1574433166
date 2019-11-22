class Driver 
  
    attr_accessor :driver 

    @@all = []
    
    def initialize(driver)
        @driver = driver

        @@all << self
    end

    def self.all
        @@all
    end

    def pass_name
        Ride.all.select do |name|
            name.passenger == self
        end
    end

    def driver_rides
        #Driver#rides
    end

    def self.mileage_cap(distance)
    
    end
end
