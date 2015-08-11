require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/place")

get("/") do
  @place = Place.all()
  erb(:index)

end

post("/place") do
  name = params.fetch("name")
  place = Place.new(name)
  place.save()
  erb(:success)

end
