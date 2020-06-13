class Meals::TheMeals   

    @@all = []

    attr_accessor :strMeal, :strArea 

    def initialize(strMeal, strArea) 
        @strMeal = strMeal 
        @strArea  = strArea 
        save
    end

    def self.all 
        @@all 
    end 

    def save 
        @@all << self 
    end 

    def self.create_from_api(meals_array) 
        meals_array.each do |meal_hash| 
            self.new(meal_hash["strMeal"], meal_hash["strArea"])
        end
    end

end