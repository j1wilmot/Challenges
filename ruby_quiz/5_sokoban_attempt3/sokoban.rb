class Level
  def initialize(level_text)
    @map = level_text.split("\n")
  end

  def display
    @map.join("\n")
  end

  def [](index)
    @map[index]
  end
end
