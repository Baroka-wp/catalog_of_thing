class App
  def initialize
    @options = Options.new
  end

  def run
    puts
    puts 'Welcome in Catalog of things !'
    puts
    option = nil
    while option != 10
      puts
      puts 'Please choose an option by entrerin a number: '
      @options.options_list
      puts
      print '[Input number]: '
      option = gets.chomp.strip.to_i
      @options.do(option)
    end
    @options.save_item
    puts '--------***--------------'
    puts ' GOOD BYE 🎉🎉🎉'
    puts '--------***--------------'
  end
end
