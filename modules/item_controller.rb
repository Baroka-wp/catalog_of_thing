module ItemController
  def load_items
    store = []
    file = open('./storage/items.json')
    if File.exist?(file) && File.read(file) != ''
      file_data = file.read
      JSON.parse(file_data).each do |item|
        case item['className']
        when 'Book'
          store << Book.new(item['name'], item['publisher'], item['cover_state'], item['publish_date'])
        when 'MusicAlbum'
          store << MusicAlbum.new(item['name'], item['publish_date'], item['on_spotify'])
        when 'Game'
          store << Game.new(item['name'], item['multiplayer'], item['last_played_at'], item['publish_date'])
        end
      end
    else
      File.write(file, '[]')
    end
    store
  end

  def save_item
    store = []
    @items.each do |item|
      case item
      when Book
        store << { name: item.name, publisher: item.publisher, cover_state: item.cover_state,
                   publish_date: item.publish_date, className: 'Book' }
      when Game
        store << { name: item.name, multiplayer: item.multiplayer, last_played_at: item.last_played_at,
                   publish_date: item.publish_date, className: 'Game' }
      when MusicAlbum
        store << { name: item.name, on_spotify: item.on_spotify,
                   publish_date: item.publish_date, className: 'MusicAlbum' }
      end
    end
    File.write('./storage/items.json', store.to_json)
  end

  def all_books
    puts 'List of Books:'
    @items.each_with_index do |item, index|
      if item.is_a?(Book)
        print "#{index}- #{item.name} published at : #{item.publish_date}  "
        print "by #{item.publisher} | Cover state : #{item.cover_state}\n"
      end
    end
    puts
  end

  def all_music_albums
    puts 'List of Music Albums:'
    @items.each_with_index do |item, index|
      if item.is_a?(MusicAlbum)
        print "#{index} - #{item.name} published at : #{item.publish_date} "
        print "On spotify : #{item.on_spotify}\n"
      end
    end
  end

  def all_games
    puts 'List of Games:'
    @items.each_with_index do |item, index|
      if item.is_a?(Game)
        print "#{index} - #{item.name} published at : #{item.publish_date}  "
        print "multiplayer #{item.multiplayer} | Last played at: #{item.last_played_at}\n"
      end
    end
  end
end
