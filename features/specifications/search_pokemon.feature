# language: en 

@search
Feature: Search new Pokemon and old Pokemons to my Pokedex api

    Background: Access endpoint 
        Given access endpoint pokemon

    @pokemon_search
    Scenario: Search wild pokemon
        When search a pokemon 1
        Then wild pokemon appeared!

    @incorrect_search
    Scenario: Search new pokemon
        When search a pokemon "Bulbasaur"
        Then wild pokemon disappeared!

    @pokemon_inexist
    Scenario: Search all pokemons
        When search a pokemon ""
        Then all wild pokemon appeared!