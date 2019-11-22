class Passenger 
    attr_accessor :ride 
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name 
        @@all.push(self)
    end 
  def self.all 
    @@all 
end

def self.rides
    Ride.all.map do |ride|
        ride
    end 
end 

def rides 
    Passenger.rides do |ride|
     ride.passenger == self 
        end 
    end 

    def total_distance
        total = 0
        Passenger.rides.each do |ride|
            if ride.passenger == self 
                total += ride.distance 
            end 
        end 
        return total
    end 

  def self.premium_members 
    @@all.select do |passenger|
        passenger.total_distance > 100
    end 
    end 
end 
