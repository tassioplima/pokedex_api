# language: en 

@search
Feature: Search new Pokemon and old Pokemons to my Pokedex api

    @pokemon_search
    Scenario: Search wild pokemon
        Given search a pokemon 1
        Then wild pokemon appeared!

    @incorrect_search
    Scenario: Search new pokemon
        Given search a pokemon "Bulbasaur"
        Then wild pokemon disappeared!