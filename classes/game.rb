require './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(name, multiplayer, last_played_at, publish_date)
    super(name, publish_date)
    @id = id || Random.rand(1..100)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
  end

  private

  def can_be_archived?
    super && Date.today.year - @last_played_at.year > 2
  end
end
