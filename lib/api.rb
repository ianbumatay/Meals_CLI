class Meals::Api  



def self.get_meals 
   puts "Connection test"  

   url = "https://www.themealdb.com/api/json/v1/1/search.php?s"
   response = HTTParty.get(url) 
   response  


end


end