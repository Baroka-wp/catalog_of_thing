require './item'
class Book < Item
  attr_accessor :publisher, :cover_state
  attr_reader :id

  def initialize(name, publisher, cover_state, publish_date)
    super(name, publish_date)
    @id = id || Random.rand(1..100)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state.downcase == 'bad'
  end
end
