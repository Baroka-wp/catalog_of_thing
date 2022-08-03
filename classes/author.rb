class Author
  attr_accessor :first_name, :last_name, :items
  attr_reader :id

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @items = []
    @id = Random.rand(1..100)
  end

  def add_item(item)
    item.add_author(self)
    @items << item unless @items.include?(item)
  end
end
