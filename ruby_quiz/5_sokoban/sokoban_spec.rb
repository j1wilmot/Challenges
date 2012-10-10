require 'sokoban'

describe Sokoban, "#print" do
	it "should print a word"
		sokoban = Sokoban.new
		sokoban.print.should eq('test')
	end
end
