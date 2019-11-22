class Driver
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << name
    end

    def self.all
        @@all
    end

end
