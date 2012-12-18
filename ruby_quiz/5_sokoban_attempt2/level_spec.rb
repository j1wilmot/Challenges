require './level.rb'

describe Board do
  context "level 0" do
    it "should display level0 successfully" do
      board = Board.new
      board.load_level(0)
      expected = "#####\n" +
                 "#.o@#\n" + 
                 "#####\n"
      board.to_s.should eq(expected)
    end
  end

  it "should display player moving left when player moves left" do
      expected = "#####\n" +
                 "#o.@#\n" + 
                 "#####\n"
      board = Board.new
      board.load_level(0)
      board.move_left
      board.to_s.should eq(expected)
  end
end
