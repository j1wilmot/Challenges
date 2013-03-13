class Hangman
  INITIAL_CHANCES = 8
  HIDDEN_CHARACTER = '_'

  class GameOverException < Exception ; end

  attr_reader :chances, :guesses

  def initialize(word_generator = RandomWordGenerator.new)
    @chances = INITIAL_CHANCES
    @guesses = []
    @word = word_generator.random_word
  end

  def word
    if @guesses.empty?
      HIDDEN_CHARACTER * @word.length
    else
      @word.gsub(/[^#{@guesses.join}]/, HIDDEN_CHARACTER)
    end
  end

  def over?
    return true if out_of_chances || word_has_been_solved
    return false
  end

  def guess(guess)
    raise GameOverException if over?
    return false if @guesses.include? guess
    @guesses << guess
    @chances -= 1 unless @word.include? guess
    true
  end

  private

  def out_of_chances
    @chances <= 0
  end

  def word_has_been_solved
    !word.include?(HIDDEN_CHARACTER)
  end

end

# Given an array of words, will return a
# word from the list at random.
class RandomWordGenerator
  DEFAULT_WORDS = %w[elephant monkey llama pirate ghost donkey]

  def initialize(words = DEFAULT_WORDS)
    @words = words
  end

  def random_word
    @words.sample
  end
end

class Game

end
