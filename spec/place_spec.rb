require("rspec")
require("place")

describe(Place) do
  describe("#name") do
    it("lets you enter a place you have been to") do
      test_place = Place.new("portland")
      expect(test_place.name()).to(eq("portland"))
    end
  end
end
