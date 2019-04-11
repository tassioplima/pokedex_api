
  #----------Given----------#

  Given("access endpoint pokemon") do
    @services = Services.new()
  end

  Given("search a pokemon {int}") do |pokemon|
    @pokemon_service = @services.get_location(pokemon)
  end
  
  #----------When----------#
  
  When("search a pokemon {string}") do |pokemon|
    @pokemon_service = @services.get_location(pokemon)
  end

  #----------Then----------#

  Then("wild pokemon appeared!") do
    expect(@pokemon_service.code).to eq 200
  end

  Then("wild pokemon disappeared!") do
    expect(@pokemon_service.code).to eq 404
  end

  Then("all wild pokemon appeared!") do
    expect(@pokemon_service.code).to eq 200
  end