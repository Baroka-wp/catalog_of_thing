require 'date'
require './classes/label'
require './classes/book'

describe Label do
  before :each do
    @label = Label.new('Gift', 'Green')
    @book = Book.new('Pareto', 'Harmathan', 'good', '2000/02/28')
    @label.add_item(@book)
  end

  it 'should be an instance of Label' do
    expect(@label).to be_an_instance_of(Label)
  end

  it 'Should named Gift ' do
    expect(@label.title).to eq('Gift')
  end

  it 'Should have Green color ' do
    expect(@label.color).to eq('Green')
  end

  context 'When add a book in label' do
    it 'should added the book in label list' do
      expect(@label.items).to include(@book)
    end
  end
end
