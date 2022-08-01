module GenreController
  def all_genres
    puts 'List of Genres'
    @genres.each do |genre|
      puts "- #{genre.id} - #{genre.name}"
    end
  end
end
