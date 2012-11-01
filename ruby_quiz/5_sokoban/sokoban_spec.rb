require './sokoban.rb'

describe Sokoban, "#test" do
	it "returns 0" do
		sokoban = Sokoban.new
		sokoban.test.should eq(0)
	end
end
