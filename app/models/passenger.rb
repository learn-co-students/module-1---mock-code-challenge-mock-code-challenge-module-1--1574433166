class Passenger
    @@all = []
        
    attr_reader :name

    def initialize(name)
        @name = name    
        @@all << self
    end 

    def passenger_rides
     Rides.select do |ride|
        rides.self = Rides.self
            
    end
  end
  
  def passenger_drivers
    Driver.select do |driver|
    end       
  end
end 
