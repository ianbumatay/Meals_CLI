class Meals::Api

  def self.get_data
     
     url = "https://www.themealdb.com/api/json/v1/1/search.php?s"
     response = HTTParty.get(url) 
     meals_array = response["meals"] 
       Meals::TheMeals.create_from_api(meals_array) 
     #binding.pry  
     
    #meals_array.each do |meal_hash| 
      #binding.pry 
      #Meals::TheMeals.new(meal_hash)
    end    

    def self.get_meals_details(meal_obj)
      url = "https://www.themealdb.com/api/json/v1/1/search.php?s"
      response = HTTParty.get(url)  
    end
end