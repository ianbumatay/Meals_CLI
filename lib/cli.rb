class Meals::Cli  

    def call 
        puts "Welcome!" 
        puts "Type: 'meals' to see the menu for today" 
        puts "Type: 'exit' to exit the menu" 
        user_input 
    end 

    def user_input 

        input = gets.strip.downcase 

        if input == "meals" 
            meals
        elsif input == "exit" 
            goodbye 
        else 
            invalid 
            user_input
        end
        
    end 

    def meals 
        puts "Today's specials are:"
        #prints out the selected meal, must iterate trough meals array
    end 

    def goodbye 
        puts "Goodbye and Have a nice day!." 
    end 

    def invalid 
        puts "invalid key, try again." 
    end



end