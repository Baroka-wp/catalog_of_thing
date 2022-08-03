module BookController
  def create_book
    print 'Enter the name of the book: '
    name = gets.chomp.strip.to_s
    print 'Enter the publisher of the book: '
    publisher = gets.chomp.strip.to_s
    print 'Enter the cover state of the book (good, bad, average): '
    cover_state = nil
    while cover_state.nil?
      entry = gets.chomp.strip.to_s
      if %w[good bad average].include?(entry)
        cover_state = entry
      else
        print 'Cover state is not correct choose between good, bad or average: '
        cover_state = nil
      end
    end
    print 'Enter the publish date of the book(year/month/day): '
    publish_date = gets.chomp.strip.to_s
    @items << Book.new(name, publisher, cover_state, publish_date)
    puts '✅ Book created successfully !'
  end
end
