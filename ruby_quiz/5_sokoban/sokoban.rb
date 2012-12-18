class Sokoban

  def initialize
    @victory = false
    @level = Level.new('level_test.txt')
  end
  
  def victory?
    @victory
  end

  def to_s
    puts @level.to_s
  end
end

class Level
  MAN = '@'
  CRATE = 'o'
  WALL = '#'
  OPEN_FLOOR = ' '
  STORAGE = '.'
  CRATE_ON_STORAGE = '*'
  MAN_ON_STORAGE = '+'

  def initialize(filename)
    @board = []
    File.open(filename) do |file|
      file.lines do |line|
        @board[@board.size] = line
      end
    end
    @man_position = find_position()
  end

  def find_position()
    #Position.new(0, 0)
    false
  end

  def to_s
    @board.join
  end
end

class Position
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def ==(other)
    other.x == x && other.y == y
  end
    
end
