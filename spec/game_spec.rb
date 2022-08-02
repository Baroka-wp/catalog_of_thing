require './classes/game'

describe Game do
    before :each do
        @game = Game.new("GTA",false,"2024-03-08","2023-04-04")
      end

      it 'should be an instance of Game' do
        expect(@game).to be_an_instance_of Game
      end

end