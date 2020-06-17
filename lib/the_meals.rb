class Meals::TheMeals   

    @@all = []

    attr_accessor :strMeal, :strArea, :strCategory, :strYoutube

    def initialize(attributes)
        attributes.each do |key, value| 
           self.send(("#{key}="), value) if self.respond_to?("#{key}=")
        end 
      save
    end

    #def initialize(strMeal, strArea, strCategory, strYoutube) 
         #@strMeal = strMeal 
         #@strArea  = strArea  
         #@strCategory = strCategory 
         #@strYoutube = strYoutube
        #save
    #end

    def self.all 
        @@all 
    end 

    def save 
        @@all << self 
    end 

    def self.create_from_api(meals_array) 
        meals_array.each do |meal_hash| 
            self.new(meal_hash)#["strMeal"],meal_hash["strArea"],meal_hash["strCategory"],meal_hash["strYoutube"])
        end
      end 

    def self.find_by_name(name) 
        self.all.select do |meal| 
            meal.strMeal.downcase ==  name
        end
    end

end