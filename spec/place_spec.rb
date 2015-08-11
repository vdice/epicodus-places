require("rspec")
require("place")

describe(Place) do
  before() do
    Place.clear()
  end
  
  describe("#name") do
    it("lets you enter a place you have been to") do
      test_place = Place.new("portland")
      expect(test_place.name()).to(eq("portland"))
    end
  end

  describe("#save") do
    it("lets you add a new place to the places you have been to list") do
      test_place = Place.new("portland")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end

  end

  describe(".clear") do
    it("clear out all of the saved places") do
      Place.new("portland").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end

  end
end
