class Api

    def self.base_url
        "https://swapi.dev/api"
    end

    def self.load_data
        load_characters
    end
    
    def self.load_characters
        response = RestClient.get(base_url + '/people')
        data = JSON.parse(response.body)
        data["results"].each do |character_data|
            Character.new(character_data)
        end

        # binding.pry

    end
end