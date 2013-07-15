require 'minitest/autorun'
require_relative 'parentheses.rb'

describe Parentheses do
  before do
    @parens = Parentheses.new
  end

  describe "when  given 1" do
    it "should respond with ['()']" do
      @parens.parens(1).must_equal ['()']
    end
  end

  describe "when give 2" do
    it "should respond with '()()' and '(())'" do
      @parens.parens(2).must_equal ['(())', '()()']
    end
  end

  # could split these out
  describe "single run" do
    before { ARGV[0] = 1 }

    it "should print '()'" do
      Proc.new { single_run }.must_output "()\n"
    end
  end
end
