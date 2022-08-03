require './classes/game'

describe Game do
  before :each do
    @game = Game.new('GTA', false, '2024-03-08', '2023-04-04')
  end

  it 'should be an instance of Game' do
    expect(@game).to be_an_instance_of Game
  end

  it 'should named GTA' do
    expect(@game.name).to eq('GTA')
  end

  it 'Could not be archived' do
    expect(@game.can_be_archived?).to eq(false)
  end
end
