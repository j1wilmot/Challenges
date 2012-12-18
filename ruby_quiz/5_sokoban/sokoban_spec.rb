require './sokoban.rb'
require 'minitest/autorun'


class TestLevel < MiniTest::Unit::TestCase

  def test_load_level
    level_text = "#####\n" +
           "#.o@#\n" +
           "#####"
    level = Level.new('level_test.txt')
    puts level_text, level.to_s
    assert_equal level_text, level.to_s 
    position = Position.new(1, 3)
    assert_equal position, level.find_position
  end
end

class TestSokoban < MiniTest::Unit::TestCase

  def test_that_board_starts_in_non_wining_state
    game = Sokoban.new
    assert !game.victory?
  end

end
