class Board
  LEVEL_DIR = File.dirname(__FILE__) + "/levels"

  # takes level number
  def load_level(level)
    @level_text = File.read(LEVEL_DIR + "/level_#{level}.txt")
  end

  def to_s
    @level_text
  end

end

