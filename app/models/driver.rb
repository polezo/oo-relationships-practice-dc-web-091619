class Driver

    attr_reader :name
    @@all = []

    def initialize(name)
        @name=name
        @@all << self unless @@all.any?(self)
    end

    def self.all
        @@all
    end

    def rides 
         Ride.all.select { |ride| ride.driver == self }
     end

     def passengers
        rides.map { |drives| drives.passenger }
     end

     ##total_distance helper method for mileage_cap

     def total_distance
        rides.inject(0) { |sum, ride| sum + ride.distance }
     end

    def self.mileage_cap(float)
         self.all.select do |drvr| 
            miles = drvr.total_distance
            drvr if miles > float
        end
    end

###My original method for mileage cap used a hash to store drivers as a key and iterate on their miles. 
#^^this with the total_miles helper method feels cleaner

    # def self.mileage_cap(float)
    #      driver_hash = {}
    #      driver_arr = [] 
    #      driver_objs = []

         ##creates a hash of all drivers and sets them to 0 distance

    #      self.all.each do |driver| 
    #         driver_hash[driver.name] = 0
    #      end

    #      ##adds distance to each drivers hash item for each ride traveled

    #      Ride.all.each do |ride| 
    #         driver_hash[ride.driver.name] += ride.distance
    #      end

    #      ##compares each driver distance to float and adds driver name to new qualifying driver name array

    #      driver_hash.each do |driver,mileage|
    #      driver_arr << driver if mileage > float
    #      end

    #      ##runs drivers names through drivers and adds driver obj to unique driver obj array if there's a match
         
    #      self.all.each do |driver| 
    #         driver_arr.each do |driver_name|
    #             driver_objs << driver if driver.name == driver_name 
                
    #         end
    #     end
    #     driver_objs    
    end

