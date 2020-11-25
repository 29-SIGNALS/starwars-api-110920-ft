class Cli

    def start
        puts "Welcome to the amazing starwars API!"

        main_menu_options
    end

    def main_menu_options
        puts "Type '1' to list characters"
        puts "Type '2' to list planets"
        puts "Type 'exit' to exit program"
        main_menu
    end

    def main_menu
        input = gets.chomp

        if input == "1"
            puts "Listing Characters"
        elsif input == "2"
            puts "Listing Planets"
        elsif input == "exit"
            puts "Exiting Program"
            exit
        else
            invalid_choice
            main_menu_options
        end
    end

    def invalid_choice
        puts "Invalid Choice. Please Try Again!"
    end
end