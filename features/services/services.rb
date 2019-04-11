class Services 
    include HTTParty
    base_uri CONFIG['base_uri']

    def get_location(location)
        self.class.get("/location/#{location}")
    end

    def get_pokemon(pokemon)
        self.class.get("/location/#{location}")
    end

end