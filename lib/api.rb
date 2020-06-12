class Meals::Api  


url = "https://www.themealdb.com/api/json/v1/1/search.php?s"
response = HTTParty.get(url)  

def self.get_meals 
   puts "Connection test"
end


end