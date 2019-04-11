# language: en 

@location
Feature: Search new Location to capture Pokemons

    Background: Access endpoint
        Given access endpoint location

    @location_search
    Scenario: Search location pokemon name
        When search a location "kanto"
        Then new pokemon location appeared!

    @location_search_Kanto
    Scenario: Search location pokemon name
        When search a location "Kanto"
        Then new pokemon location desappeared!
        
    @location_search_int
    Scenario: Search location pokemon id
        When search a location 1
        Then new pokemon location appeared by number!

    @incorrect_location
    Scenario: Search new pokemon
        When search a location "XXXX"
        Then new pokemon location desappeared!

    @location_all
    Scenario: Search all pokemons
        When search all location ""
        Then all new location appeared!