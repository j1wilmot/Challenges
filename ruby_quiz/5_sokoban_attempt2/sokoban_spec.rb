require './sokoban.rb'

describe Sokoban do
  before :each do
    @sokoban = Sokoban.new
  end

  it "should be running when game starts" do
    @sokoban.running?.should be_true
  end
end
