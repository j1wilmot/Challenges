require 'minitest/autorun'
require_relative 'hangman'

#Hangman Tests
describe Hangman do
  CHANCES = Hangman::INITIAL_CHANCES
  HIDDEN = Hangman::HIDDEN_CHARACTER

  before do
    @word = "elephant"
    word_generator = RandomWordGeneratorMock.new @word
    @hangman = Hangman.new word_generator
  end

  it "should have all chances remaining" do
    @hangman.chances.must_equal CHANCES
  end

  it "should have an empty guesses array" do
    @hangman.guesses.empty?.must_equal true
  end

  it "should display word as all underscores" do
    @hangman.word.must_equal @word.gsub(/./, '_')
  end

  it "should display correct number of characters for word" do
    @hangman.word.length.must_equal @word.length 
  end

  it "should not be over" do
    @hangman.over?.must_equal false
  end

  describe "after first successful guess" do
    before do
      @guess = 'h'
      @hangman.guess @guess
    end

    it "should have guess in guesses array" do
      @hangman.guesses.must_include @guess
    end

    it "should have all chances remaining" do
      @hangman.chances.must_equal CHANCES
    end

    it "should show successful guess in word" do
      word = @word.gsub(/[^#{@guess}]/, HIDDEN)
      @hangman.word.must_equal word
    end

    describe "after duplicate guess" do
      it "should not process duplicate guess and return false" do
        @hangman.guess(@guess).must_equal false
        @hangman.chances.must_equal CHANCES
      end
    end
  end

  describe "after first unsuccessful guess" do
    before do
      @guess = 'z'
      @hangman.guess @guess
    end

    it "should have guess in guesses array" do
      @hangman.guesses.must_include @guess
    end

    it "should have one fewer chances remaining" do
      @hangman.chances.must_equal CHANCES - 1
    end

    it "should show word with all hidden characters" do
      @hangman.word.must_equal HIDDEN * @word.length 
    end
  end

  describe "after all chances are used" do
    before do
      guess = 'a'
      CHANCES.times { @hangman.guess guess.next! }
    end

    it "should be over" do
      @hangman.over?.must_equal true
    end

    it "should not allow additional guesses" do
      guess = lambda { @hangman.guess('z') }
      guess.must_raise Hangman::GameOverException
    end
  end

  describe "after word is sucessfully guessed" do
    before do
      guesses = @word.split.compact
      guesses.each { |guess| @hangman.guess guess }
    end

    it "should be over" do
      @hangman.over?.must_equal true
    end

    it "should not allow additional guesses" do
      guess = lambda { @hangman.guess('z') }
      guess.must_raise Hangman::GameOverException
    end
  end
end

# RandomWordGenerator Tests
describe RandomWordGenerator do
  before do
    @words = %w[elephant hippo monkey]
    @word_generator = RandomWordGenerator.new @words
  end

  it "should generate a random word from list" do
    word = @word_generator.random_word
    @words.must_include word
  end
end

# RandomWordGeneratorMock
class RandomWordGeneratorMock < RandomWordGenerator
  def initialize(word)
    super([])
    @word = word
  end

  def random_word
    @word
  end
end

#Game Tests
describe Game do
end
