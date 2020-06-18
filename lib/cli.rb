class Meals::Cli  
    
    def run 
        start 
        Meals::Api.get_data
        menu  
        #Meals::Api.get_data
    end
    

    def start
        puts ""
        puts "---------------  Welcome!  ------------"  
        puts ""
        puts "Type: '1' to see the menu of International meals"  
        puts ""
        puts "Type: '2' to exit the menu" 
        puts "" 
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

        #input = gets.strip.downcase 
        #meals_choices(input)
    
        #meal_selected(input)
        main_loop
    end     

    def main_loop
        loop do 
            input = meals_choices 
            case input 
            when "exit"
                break 
            when "ivalid" 
                next 
            else
                puts input 
                #print_single_meal(input)
            end
        end 
        puts "in main loop method"
     end

    def meals_choices
        input = gets.strip.downcase 
        return input if input == "exit"
        if input.to_i.between?(1, Meals::TheMeals.all.length)
            return input.to_i - 1
            puts input
        else
             puts "Oops!"
             return "invalid"
        end
    end
    

    def print_single_meal
         meal_obj = Meals::TheMeals.all
         #Meals::Api.get_details(meal_obj) 
    end

    #def meals_selected(meal) 
       # meals = Meals::TheMeals.find_by_name(meal) 
       # meals.each do |meal|   
      
           # puts "-----------------------------"
            #puts "Name: #{meal.strMeal}"  
            #puts "Cuisine: #{meal.strArea}" 
            #puts "Category: #{meal.strCategory}" 
            #puts "Youtube: #{meal.strYoutube}" 
            #puts "-----------------------------"      
       #end  
    #end 

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