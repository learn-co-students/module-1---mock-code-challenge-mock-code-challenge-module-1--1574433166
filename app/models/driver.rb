class Driver
    attr_accessor :name, :ride
    @@all = []
    def initialize(name)
        @name = name 
       @@all.push(self)
    end 
  def  self.all
    @@all 
  end

  def self.rides
    Ride.all.map do |ride|
        ride
    end 
end 
def rides 
    Driver.rides.select do |ride|
        ride.driver == self 
    end 
end 
def total_distance
    total = 0
    Driver.rides.each do |ride|
        if ride.driver == self 
            total += ride.distance 
        end 
    end 
    return total
end 
def passenger_names 
    array = []
    Driver.rides.each do |ride|
        if ride.driver == self && !array.include?(ride.passenger.name)
          array  << ride.passenger.name 
        end 
    end 
    return array 
end 
  def  self.mileage_cap(distance_number) 
    array = []
self.rides.each.each do |ride| 
  if  ride.distance > distance_number
   array << ride.driver 
  end 
end 
return array
end 
end 
