module MusicAlbumController
  def create_music_album
    print 'Enter the name of the music album: '
    name = gets.chomp.strip.to_s
    print 'Do you have your music on Spotify (Y or N): '
    spotify = nil
    while spotify.nil?
      spotify = gets.chomp.strip.to_s
      case spotify.downcase
      when 'y' then spotify = true
      when 'n' then spotify = false
      else
        puts 'Please enter y or n: '
        spotify = nil
      end
    end
    print 'Enter album publish date(yyyy/mm/dd): '
    publish = gets.chomp.strip.to_s

    music_album = MusicAlbum.new(name, publish, spotify)
    @items.push(music_album)
    print '✅  Music Album added successfully'
  end
end
