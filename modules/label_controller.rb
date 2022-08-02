module LabelController
  def all_labels
    puts 'List of Labels'
    @labels.each do |label|
      puts "- #{label.id} - #{label.title} - #{label.color}"
    end
  end
end
