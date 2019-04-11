
#----------Given----------#

Given("access endpoint location") do
  @services = Services.new()
end

#----------When----------#

When("search a location {string}") do |location| 
  @location_service = @services.get_location(location)
end

When("search a location {int}") do |location| 
  @location_service = @services.get_location(location)
end

When("search all location {string}") do |location|
  @location_service = @services.get_location(location)
end

#----------Then----------#

Then("new pokemon location appeared!") do
  expect(@location_service.code).to eq 200
end

Then("new pokemon location desappeared!") do
  expect(@location_service.code).to eq 404
end

Then("new pokemon location appeared by number!") do
  expect(@location_service.code).to eq 200
end

Then("all new location appeared!") do
  expect(@location_service.code).to eq 200
end