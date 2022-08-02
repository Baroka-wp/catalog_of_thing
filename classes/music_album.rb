require_relative 'item'

class MusicAlbum < Item
    attr_reader :album_name, :artist_name, :publish_name, :on_spotify

    def initialize(album_name, artist_name, publish_name, on_spotify)
        super(publish_date)
        @album_name = album_name
        @artist_name = artist_name
        @on_spotify = on_spotify
    end

    def can_be_archived?
        super && @on_spotify
    end
end

