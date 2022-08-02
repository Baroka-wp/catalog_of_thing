module LabelController
  def all_labels
    puts 'List of Labels'
    @labels.each_with_index do |label, index|
      puts "#{index}-  #{label.title}, #{label.color}"
    end
  end

  def load_labels
    store = []
    file = open('./storage/label.json')
    if File.exist?(file) && File.read(file) != ''
      file_data = file.read
      JSON.parse(file_data).each do |label|
        store << Label.new(label['title'], label['color'])
      end
    else
      File.write(file, '[]')
    end
    store
  end
end
