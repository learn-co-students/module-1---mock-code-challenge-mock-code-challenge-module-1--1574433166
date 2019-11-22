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
    Ride.all.select {|ride| ride.passenger == self}    #to refactor? module body
  end

  def drivers
    rides.map {|ride| ride.driver}
  end

  def total_distance # to refactor? module body
    distances = rides.map {|ride| ride.distance}
    distances.sum
  end

  def self.premium_members
    # - Returns an array of all Passengers who have travelled over 100 miles in total with the service
    self.all.select do |passenger| 
      passenger.total_distance > 100
    end
  end

end
