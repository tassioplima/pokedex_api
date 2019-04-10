#----------Given----------#

Given("search a location {string}") do |location|
  @get_result_location_string = HTTParty.get("http://pokeapi.co/api/v2/location/#{location}")
end

Given("search a location {int}") do |location|
  @get_result_location_int = HTTParty.get("http://pokeapi.co/api/v2/location/#{location}")
end

Given("search all location {string}") do |location|
  @get_result_location_all = HTTParty.get("http://pokeapi.co/api/v2/location/#{location}")
end

#----------Then----------#

Then("new pokemon location desappeared!") do
  expect(@get_result_location_string.code).to eq 404
end

Then("new pokemon location appeared!") do
  expect(@get_result_location_string.code).to eq 200
end

Then("new pokemon location appeared by number!") do
  expect(@get_result_location_int.code).to eq 200
end

Then("all new location appeared!") do
  expect(@get_result_location_all.code).to eq 200
end