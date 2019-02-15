require 'player'

describe Player do
  before (:all) do
    @player = Player.new("Jim", 1)
  end
  it "has a name" do
    expect(@player.name).to eq("Jim")
  end
  it "has a position" do
    expect(@player.position).to eq(1)
  end
  it "can change position to a new position" do
    @player.change_position(3)
    expect(@player.position).to eq(3)
  end

end
