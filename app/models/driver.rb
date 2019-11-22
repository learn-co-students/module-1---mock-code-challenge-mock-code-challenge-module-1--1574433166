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

  def rides #to refactor? module body
    Ride.all.select {|ride| ride.driver == self}
  end

  def passenger_names
    passengers = rides.map {|ride| ride.passenger}
    passengers.map {|passenger| passenger.name}
  end

  def self.mileage_cap(distance)    
    #select drivers who have driven over the total distance
    self.all.select do |driver| 
      driver.total_distance > distance
    end
  end

# HELPER METHODS

  def total_distance  # to refactor? module body
    #find total distance for each driver
    distances = rides.map {|ride| ride.distance}
    distances.sum
  end

end
