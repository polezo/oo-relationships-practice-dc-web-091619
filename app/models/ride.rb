class Ride

    attr_reader :passenger, :driver, :distance
    @@all = []
    @@premium = []

    def initialize(passenger,driver,distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        
        @@all << self

        current_milage = passenger.rides.inject(0){|sum,ride| sum + ride.distance}

        unless Ride.premium.include?(passenger)
            Ride.premium << passenger if current_milage > 100 
        end


        
    end

    def self.average_distance
        milage = self.all.inject(0){|sum,ride| sum + ride.distance}
        milage / self.all.size
    end

    def self.all
        @@all
    end

    def self.premium
        @@premium
    end

end