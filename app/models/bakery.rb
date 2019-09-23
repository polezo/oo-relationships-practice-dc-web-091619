class Bakery

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def desserts
        Dessert.all.select { | dessert | dessert.bakery == self }
    end


    def ingredients
        i_arr=[]
        desserts.each do |i| 
           i_arr << i.ingredients
        
    end
    i_arr.flatten
    end

    def ingredient_calories 
        
        ingredients.map do |i| i.calories 
        end
    end

    def average_calories
        calorie_total = ingredient_calories.inject(0) {|sum,c| sum + c }
        return calorie_total / desserts.size
    end
    
    def self.all
        @@all
    end


end


# - #ingredients
#   - should return an array of ingredients for the bakery's desserts
# - #desserts
#   - should return an array of desserts the bakery makes
# - #average_calories
#   - should return a number totaling the average number of calories for the desserts sold at this bakery
# - .all
#   - should return an array of all bakeries
# - #shopping_list
#   - should return a string of names for ingredients for the bakery