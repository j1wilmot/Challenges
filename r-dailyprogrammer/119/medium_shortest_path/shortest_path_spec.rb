require File.join File.dirname(__FILE__), 'shortest_path'
require 'minitest/autorun'

describe ShortestPath do
  before do
    @path = ShortestPath.new 'testfile.txt'
  end

  it "should parse start from file" do
    @path.start.must_equal [0, 0]
  end

end
