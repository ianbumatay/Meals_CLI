class Meals::Cli  
    
    def run 
        introduction
        Meals::Api.get_data
        menu  
    end

    def introduction
        puts ""
        puts "        ------  Welcome!  ------ "  
        puts ""   
    end

    def menu 
        puts "----------------- Menu -----------------------"     
        puts ""
        puts "Type: '1' to see the menu of International meals"  
        puts ""
        puts "Type: '2' to exit the menu" 
        puts "" 
        puts "----------------------------------------------"     

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
       main_loop    
    end     

    def main_loop 

        puts ""
        puts "Type: 'menu' to go to main menu." 
        puts ""
        puts "Type: numbers 1 - 25  for the meals you like."
        puts ""  
        puts "--------------------------------------------"
    
        loop do

        input = meals_choices 
        case input 
            when "menu" 
                break 
            when "invalid" 
                next 
            else
                print_single_meal(input)
            end
        end 
        menu
    end

    def meals_choices

        input = gets.strip.downcase 
        return input if input == "menu"
        
        if input.to_i.between?(1, Meals::TheMeals.all.length)
            return input.to_i - 1 
        else
            puts ""
            puts "----- Please type numbers 1 - 25 for meals selection. -----"
            puts ""
            return "invalid"
        end 
    end
    
    def print_single_meal(i)
         meal_obj = Meals::TheMeals.all[i]
         puts ""
         puts "Name: #{meal_obj.strMeal}"
         puts "Cuisine: #{meal_obj.strArea}" 
         puts "Category: #{meal_obj.strCategory}" 
         puts "Youtube: #{meal_obj.strYoutube}" 
         puts "--------------------------------------"
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