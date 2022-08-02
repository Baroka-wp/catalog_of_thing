module GameController
  def create_game
    print 'Enter the name of the game: '
    name = gets.chomp.to_s
    print 'Enter the publish date of the game(year-month-day): '
    publish_date = gets.chomp.to_s
    print 'Enter last played date of the game: '
    last_played_at = gets.chomp.to_s
    print 'The game is multiplayer ? (y/n): '
    multiplayer = nil
    while multiplayer.nil?
      multiplayer = gets.chomp.to_s
      case multiplayer
      when 'y'
        multiplayer = true
      when 'n'
        multiplayer = false
      else
        print 'Please enter y or n: '
        multiplayer = nil
      end
    end
    game = Game.new(name, multiplayer, last_played_at, publish_date)
    @items << game
    puts '✅ Game added successfully !'
  end
end
