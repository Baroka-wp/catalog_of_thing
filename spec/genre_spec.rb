require 'date'
require './classes/genre'
require './classes/music_album'

describe Genre do
  before :all do
    @music_album = MusicAlbum.new('Bob Marley', '1977-07-19', true)
    @genre = Genre.new('Reggae')
  end

  context 'When creating @genre. an instance of class Genre' do
    it 'should take parameters and return Genre object' do
      expect(@genre).to be_an_instance_of Genre
    end
  end

  context 'When retrieving the name of a genre' do
    it 'should return the genre name' do
      expect(@genre.name).to eq('Reggae')
    end
  end

  context 'When adding a music album into a genre' do
    it 'should add the music album to the genre' do
      expect(@genre.add_item(@music_album)).to include(@music_album)
    end
  end
end
