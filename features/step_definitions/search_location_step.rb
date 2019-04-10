#----------Given----------#

Given("search a location {string}") do |location|
  
  #@endpoint = "http://pokeapi.co/api/v2/location/#{location}"
  @response_location_string = @locationservices.getLocation(location)
end

Given("search a location {int}") do |location|
  @endpoint = "http://pokeapi.co/api/v2/location/#{location}"
  @get_result_location_int = HTTParty.get @endpoint
end

Given("search all location {string}") do |location|
  @endpoint = "http://pokeapi.co/api/v2/location/#{location}"
  @get_result_location_all = HTTParty.get @endpoint
end

#----------Then----------#

Then("new pokemon location appeared!") do
  expect(@response_location_string.code).to eq 200
  #expect(@response_location_string.body).to match_json_schema('location_schema')
end

Then("new pokemon location desappeared!") do
  expect(@get_result_location_string.code).to eq 404
  expect()
end

Then("new pokemon location appeared by number!") do
  expect(@get_result_location_int.code).to eq 200
end

Then("all new location appeared!") do
  expect(@get_result_location_all.code).to eq 200
end