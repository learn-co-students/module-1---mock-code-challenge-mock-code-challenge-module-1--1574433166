
class Passenger

    @@passengers = []
    attr_reader :name
    attr_accessor :rides, :drivers

    @rides = []
    @drivers = []
    
    def initialize(name, rides, drivers)
        @name = name
        @rides = rides
        @drivers = drivers

        @@passengers << self

    end

    def rides
        Passenger.all.select do |rides|
            name.rides == self
            @rides << rides
        end
    end


    def self.all
        @@passengers
    end

end