require 'board'

describe Board do
  before (:all) do
    @board = Board.new
  end
  it "returns the end position 27 when land position 9 is at the bottom of a ladder" do
    expect(@board.end_position(9)).to eq(27)
  end
  it "returns the end position 16 when land position 24 is at the head of a snake" do
    expect(@board.end_position(24)).to eq(16)
  end
  it "returns the end position 10 when land position 10 has no snake or ladder" do
    expect(@board.end_position(10)).to eq(10)
  end
  it "returns finish true if given position 40 is beyond last square 36" do
    expect(@board.finish?(40)).to eq(true)
  end
  it "returns finish false if given position 30 is before last square 36" do
    expect(@board.finish?(30)).to eq(false)
  end
  it "returns finish true if given position 36 is on last square 36" do
    expect(@board.finish?(40)).to eq(true)
  end
end
