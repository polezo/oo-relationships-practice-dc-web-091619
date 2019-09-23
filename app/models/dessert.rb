class Dessert
    attr_accessor :name, :bakery 
    
    @@all = []

    def initialize(name,bakery)
        @name = name
        @@all << self 
        @bakery = bakery
    end

    def self.all
        @@all 
    end

    def ingredients 
        Ingredient.all.select do |i| i.dessert == self 
        
        end

    end

    def calories
        ingredients.inject(0) {|sum,i| sum + i.calories }
    end

end

