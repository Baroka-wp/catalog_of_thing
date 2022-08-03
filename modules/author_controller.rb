module AuthorController
  def all_authors
    puts 'List of Authors'
    @authors.each do |author|
      puts "- #{author.id} - #{author.first_name} #{author.last_name}"
    end
  end

  def load_authors
    store = []
    file = open('./storage/author.json')
    if File.exist?(file) && File.read(file) != ''
      file_data = file.read
      JSON.parse(file_data).each do |author|
        store << Author.new(author['first_name'], author['last_name'])
      end
    else
      File.write(file, '[]')
    end
    store
  end
end
