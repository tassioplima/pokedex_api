# language: en 

@location
Feature: Search new Location to capture Pokemons

    @location_search
    Scenario: Search location pokemon name
        Given search a location "kanto"
        Then new pokemon location appeared!

    @location_search_Kanto
    Scenario: Search location pokemon name
        Given search a location "Kanto"
        Then new pokemon location desappeared!
        
    @location_search_int
    Scenario: Search location pokemon id
        Given search a location 1
        Then new pokemon location appeared by number!

    @incorrect_location
    Scenario: Search new pokemon
        Given search a location "XXXX"
        Then new pokemon location desappeared!

    @location_all
    Scenario: Search all pokemons
        Given search all location ""
        Then all new location appeared!