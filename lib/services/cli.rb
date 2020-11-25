class Cli

    def start
        puts "Welcome to the amazing starwars API!"
        puts "loading..."
        Api.load_data # all information loaded and models created at this point.
        main_menu_options
    end

    def main_menu_options
        puts "Type '1' to list characters"
        puts "Type '2' to list planets"
        puts "Type 'exit' to exit program"
        main_menu
    end

    def main_menu
        input = get_input

        if input == "1"
            list_characters
            puts "select character for more information"
            main_menu_options
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

    def get_input
        print "Enter Choice: "
        gets.chomp
    end

    def list_characters
        Character.all.each.with_index(1) do |character, index|
            puts "#{index}. #{character.name}"
        end
    end
end