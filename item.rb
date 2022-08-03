require 'date'

class Item
  attr_accessor :name, :publish_date
  attr_reader :id, :genre, :author, :source, :label

  def initialize(name, publish_date)
    @id = id || Random.rand(1..100)
    @name = name
    @publish_date = Date.parse(publish_date)
    @archived = false
    @genre = genre
    @author = author
    @source = source
    @label = label
  end

  def can_be_archived?
    Date.today.year - @publish_date.year > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def author=(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def genre=(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def label=(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end
end
