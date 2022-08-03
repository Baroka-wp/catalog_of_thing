require 'date'
require './classes/book'
require './classes/label'

describe Book do
  before :each do
    @book = Book.new('The Hobbit', 'J.R.R. Tolkien', 'good', '1937/12/21')
    @label = Label.new('Gift', 'Green')
    @book.label = @label
  end
  it 'should be an instance of Book' do
    expect(@book).to be_an_instance_of Book
  end
  it 'should have a name' do
    expect(@book.name).to eq('The Hobbit')
  end
  it 'should have a publisher' do
    expect(@book.publisher).to eq('J.R.R. Tolkien')
  end
  it 'should have a cover state' do
    expect(@book.cover_state).to eq('good')
  end
  it 'should have a publish date' do
    expect(@book.publish_date).to eq(Date.parse('1937/12/21'))
  end
  it 'should can be archived' do
    expect(@book.can_be_archived?).to eq(true)
  end

  context 'when add label to book' do
    it 'should have label' do
      expect(@book.label.title).to eq('Gift')
      expect(@book.label.color).to eq('Green')
    end
    it 'Label should have book' do
      expect(@label.items).to include(@book)
    end
  end
end
