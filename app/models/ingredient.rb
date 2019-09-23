class Ingredient

    attr_reader :name, :calories, :dessert

    @@all = []

    def initialize(name, dessert, calories)
        @name = name
        @calories = calories
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient)
        self.all.select do |ingredients| ingredients.name.include?(ingredient) 
        end
    end
    
    def bakery
        dessert.bakery = self
    end


end

# - #dessert
#   - should return a dessert object for that ingredient
# - #bakery
#   - should return the bakery object for the bakery that uses that ingredient
# - .all
#   - should return an array of all ingredients
# - .find_all_by_name(ingredient)
#   - should take a string argument return an array of all ingredients that
#     include that string in their name
#     - .find_all_by_name('chocolate') might return ['chocolate sprinkles',
#       'chocolate mousse', 'chocolate']
#     - make sure you aren't just looking for exact matches (like 'chocolate' ==
#       'chocolate')