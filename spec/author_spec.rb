require './classes/author'

describe Author do
  before :each do
    @author = Author.new('john', 'Doe')
  end

  it 'items array should contain instance of author' do
    expect(@author).to be_an_instance_of Author
  end
end
