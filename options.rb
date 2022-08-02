require 'json'
require './classes/book'
require './classes/label'
require './modules/item_controller'
require './modules/label_controller'
require './modules/genre_controller'
require './modules/author_controller'
require './modules/book_controller'
require './modules/music_album_controller'
require './modules/game_controller'

class Options
  include ItemController
  include AuthorController
  include LabelController
  include GenreController
  include BookController
  include MusicAlbumController
  include GameController

  def initialize
    @items = load_items
    @genres = []
    @labels = load_labels
    @authors = []
  end

  def options_list
    puts
    puts '1- List all books'
    puts '2- List all music albums'
    puts '3- List all games'
    puts '4- List all genres'
    puts '5- List all labels'
    puts '6- List all authors'
    puts '7- Add a book'
    puts '8- Add a music album'
    puts '9- Add a game'
    puts '10- Exit'
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def do(option)
    case option
    when 1 then all_books
    when 2 then all_music_albums
    when 3 then all_games
    when 4 then all_genres
    when 5 then all_labels
    when 6 then all_authors
    when 7 then create_book
    when 8 then create_music_album
    when 9 then create_game
    when 10
      nil
    else
      puts 'Wrong option'
      option
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
