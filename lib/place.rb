class Place
  define_method(:initialize) do |name|
    @name = name
  end
  define_method(:name) do
    @name
  end
end
