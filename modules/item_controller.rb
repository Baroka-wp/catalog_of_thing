module ItemController
  def all_books
    puts 'List of Books'
    @items.each do |item|
      if item.is_a?(Book)
        print "- #{item.id} - #{item.name} publishe at : #{item.publish_date}  "
        print "- #{item.publisher} | Cover state : #{item.cover_state} "
      end
    end
  end

  def all_music_albums
    puts 'List of Music Albums'
    @items.each do |item|
      if item.is_a?(MusicAlbum)
        print "- #{item.id} - #{item.name} publishe at : #{item.publish_date} "
        print "- On spotify : #{item.on_spotify}"
      end
    end
  end

  def all_games
    puts 'List of Games'
    @items.each do |item|
      if item.is_a?(Game)
        print "- #{item.id} - #{item.name} publishe at : #{item.publish_date}  "
        print "- multiplayer #{item.multiplayer} | Last played at: #{item.last_played_at}"
      end
    end
  end
end
