class Passenger
    attr_accessor :rides, :drivers, :total_distance
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @total_distance = 0
        @rides = []
        @drivers = []
        @@all << self
    end
    def rides
        @rides
    end
    def self.premium_members
        @@all.select{|passenger| passenger.total_distance > 100}
    end
    def self.all
        @@all
    end
end