class LocationServices
    include HTTParty
    base_uri CONFIG['base_uri']

    def get_location(location)
        self.class.get("/location/#{location}")
    end    
end    