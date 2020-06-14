class Meals::Cli  

    def call 
        puts "Welcome!"  
        puts "________________"
        puts "Type: 'meals' to see the menu for today" 
        puts "Type: 'exit' to exit the menu"  
        Meals::Api.get_data
        user_input  
      
    end 

    def user_input 

        input = gets.strip.downcase 

        if input == "meals" 
            meals 
            user_input
        elsif input == "exit" 
            goodbye 
        else 
            invalid 
            user_input
        end
    end 

    def meals  #print_all 
        puts "Today's specials are:" 
        puts
        Meals::TheMeals.all.each.with_index(1) do |meal, index| 
            puts "#{index}. #{meal.strMeal}" 
            puts "            cuisine: #{meal.strArea}"
        end
        #prints out the list of all the meal, must iterate trough meals array with #each 
       
        puts
        input = gets.strip.downcase 
        meals_selection(input) 
        
    end  

    def meals_selection(meal_name) 
        puts "type the name of your the meals you selected."  
        puts "#{meal_name}" 

        # find_by_name or index number. use select or detect
    end

    def goodbye 
        puts "Goodbye and Have a nice day!." 
    end 

    def invalid 
        puts "invalid key, try again." 
    end



end