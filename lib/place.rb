class Place
  @@place = []

  define_method(:initialize) do |name|
    @name = name
  end

  define_method(:name) do
    @name
  end

  define_method(:save) do
    @@place.push(self)
  end

  define_singleton_method(:all) do
    @@place
  end

  define_singleton_method(:clear) do
    @@place = []
  end
end
