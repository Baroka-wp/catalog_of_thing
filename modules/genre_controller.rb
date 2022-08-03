module GenreController
  def all_genres
    puts 'List of Genres'
    @genres.each do |genre|
      puts "- #{genre.id} - #{genre.name}"
    end
  end

  def load_genre
    store = []
    file = open('./storage/genre.json')
    if File.exist?(file) && File.read(file) != ''
      file_data = file.read
      JSON.parse(file_data).each do |genre|
        store << Genre.new(genre['name'])
      end
    else
      File.write(file, '[]')
    end
    store
  end
end
