class Genre
  attr_accessor :items
  attr_reader :name, :id

  def initialize(name)
    @id = rand(1..100)
    @name = name
    @items = []
  end

  def add_item(item)
    item.genre = self
    @items << item
  end
end
