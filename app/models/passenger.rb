class Passenger

    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self unless @@all.any?(self)
    end

    def drivers
        rides.all.map {|ride| ride.driver }
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def total_distance
        rides.inject(0) { |sum, ride| sum + ride.distance }
    end

    def self.premium_members
        Ride.premium
    end

    def self.all
        @@all
    end

end


