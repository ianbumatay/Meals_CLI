class Meals::Api

  def self.get_data
     
     url = "https://www.themealdb.com/api/json/v1/1/search.php?s"
     response = HTTParty.get(url) 
     meals_array = response["meals"] 
       Meals::TheMeals.create_from_api(meals_array) 
    end    

end
