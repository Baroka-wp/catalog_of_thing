require 'date'
require './classes/music_album'

describe MusicAlbum do
before :each do
    @music_album = MusicAlbum.new('Thriller', '1982-06-21', true)
end

context 'When creating a music album, we need an instance of the class MusicAlbum' do
    it 'takes parameters and return the MusicAlbum class' do
    expect(@music_album).to be_an_instance_of MusicAlbum
end
end

context 'When retrieving a name from the music album' do
    it ' should return a correct name' do
        expect(@music_album.name).to eq('Thriller')
end
end

context 'When retrieving a publish date from music album' do
    it 'should return a publish date' do
        expect(@music_album.publish_date).to eq(Date.parse('1982-06-21'))
    end
end

context 'When checking if music album is on sportify' do
    it 'should return true' do
        expect(@music_album.on_spotify).to eq(true)
    end 
end
end
