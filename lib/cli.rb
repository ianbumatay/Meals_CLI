class Meals::Cli  
    

    def call  
        puts ""
        puts "---------------  Welcome!  ------------"  
        puts ""
        puts "Type: 'meals' to see the menu of International meals"  
        puts ""
        puts "Type: 'exit' to exit the menu"  
        puts "----------------------------------------------" 
        Meals::Api.get_data
        menu
    end 

    def menu 
        input = gets.strip.downcase
        if input == "meals" 
            meals_list 
            menu
        elsif input == "exit" 
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
        puts "Type the name of your the meals number you selected."  
        puts ""

        input = gets.strip.downcase 
        meals_selected(input) 
        
    end  

    def meals_selected(meal) 
        meals = Meals::TheMeals.find_by_name(meal) 
        meals.each do |meal|  
            puts "----------------------------"
            puts "Name: #{meal.strMeal}"  
            puts "Cusine: #{meal.strArea}" 
            puts "Category: #{meal.strCategory}" 
            puts "Youtube: #{meal.strYoutube}" 
            puts "-----------------------------" 
            #menu
        end 
    end

    def goodbye  
        puts "------------------------------"
        puts "Goodbye and Have a nice day!." 
    end 

    def invalid  
        puts ""
        puts "Invalid key, try again."  
        puts "------------------------------"
    end



end