require File.join(File.dirname(__FILE__), 'sokoban')

require 'minitest/autorun'

class TestLevel < MiniTest::Unit::TestCase

  def setup
    @level_text = "#####\n\
                   #.o@#\n\
                   #####"
    @level = Level.new @level_text
  end

  def test_load_level
    assert_equal @level_text, @level.display
  end

  def test_query_level
    expected = "@"
    assert_equal expected, @level[1][3]
  end

end
