require './item'

class MusicAlbum < Item
  attr_accessor  :on_spotify

  def initialize(name, publish_date, on_spotify)
    super(name, publish_date)
    @id = Random.rand(1..1000)
    @on_spotify = on_spotify
  end

  def can_be_archived?(item)
    super && @on_spotify == true
  end
end
