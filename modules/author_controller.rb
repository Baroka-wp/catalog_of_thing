module AuthorController
  def all_authors
    puts 'List of Authors'
    @authors.each do |author|
      puts "- #{author.id} - #{author.first_name} #{author.last_name}"
    end
  end
end
