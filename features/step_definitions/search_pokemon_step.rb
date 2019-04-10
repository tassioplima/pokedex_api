

  Given("search a pokemon {int}") do |id|
    @get_result = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{id}")
  end
  
  Then("wild pokemon appeared!") do
    expect(@get_result.code).to eq 200
  end
  
  When("search a pokemon {string}") do |string|
    @get_result_string = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{string}")
  end
  
  Then("wild pokemon disappeared!") do
    expect(@get_result_string.code).to eq 404
  end

  Then("all wild pokemon appeared!") do
    expect(@get_result_string.code).to eq 200
  end