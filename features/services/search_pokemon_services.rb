class SearchPokemon
    include HTTParty
    base_uri CONFIG['base_uri']

    def getPokemon(id)
        self.class.get("/pokemon/#{id}")
    end
end    