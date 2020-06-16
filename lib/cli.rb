class Meals::Cli  
    
    def run 
        start
        menu 
    end
    

    def start
        puts ""
        puts "---------------  Welcome!  ------------"  
        puts ""
        puts "Type: '1' to see the menu of International meals"  
        puts ""
        puts "Type: '2' to exit the menu"  
        puts "----------------------------------------------" 
        
    end

    def menu
        input = gets.strip
        if input == "1" 
            meals_list 
            menu
        elsif input == "2" 
            goodbye 
        else 
            invalid 
            menu
        end
    end 

    def meals_list  
        puts "" 
        puts "Meals List:" 
        puts "-----------"
        Meals::TheMeals.all.each.with_index(1) do |meal, index| 
            puts "#{index}. #{meal.strMeal}"
          end 
        
        puts ""
        puts "Type the name of your the meal you like."  
        puts ""

        input = gets.strip.downcase 
        meals_selected(input)     
    end  

    def meals_selected(meal) 
        meals = Meals::TheMeals.find_by_name(meal) 
        meals.each do |meal|  
            puts "-----------------------------"
            puts "Name: #{meal.strMeal}"  
            puts "Cusine: #{meal.strArea}" 
            puts "Category: #{meal.strCategory}" 
            puts "Youtube: #{meal.strYoutube}" 
            puts "-----------------------------" 
        end 
    end

    def goodbye  
        puts ""
        puts "----- Goodbye and Have a nice day!. -----" 
        puts "" 
    end 

    def invalid  
        puts ""
        puts "----- Invalid key: Please try again. -----"  
        puts "" 
    end
end