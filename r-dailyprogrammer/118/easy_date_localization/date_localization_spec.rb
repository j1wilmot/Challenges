require File.join File.dirname(__FILE__), 'date_localization'
require 'minitest/autorun'

describe "Test" do
  before do
    @time = DateTime.new(2001,-11,-26,-20,-55,-54,'+7')
  end

  describe "seconds" do
   #DateLocalization::localize("%s", @time).must_equal "6" 
    DateLocalization::echo('hi')
  end
end
