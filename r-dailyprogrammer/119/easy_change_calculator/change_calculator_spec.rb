require File.join File.dirname(__FILE__), 'change_calculator'
require 'minitest/autorun'

describe ChangeCalculator do

  describe "when given 1.23" do
    before do
      @calc = ChangeCalculator.new(1.23)
    end

    it "should give correct output" do
      expected ="Quarters: 4\nDimes: 2\nNickels: 0\nPennies: 3\n"
      @calc.calculate.must_equal expected
    end
  end

  describe "when given 1.00" do
    before do
      @calc = ChangeCalculator.new(1.00)
    end

    it "should return 4 quarters" do
      @calc.quarters.must_equal 4
    end

    it "should display output as string correctly" do
      expected ="Quarters: 4\nDimes: 0\nNickels: 0\nPennies: 0\n"
      @calc.calculate.must_equal expected
    end
  end

  describe "when given 2.17" do
    before do
      @calc = ChangeCalculator.new(2.17)
    end

    it "should have 8 quarters" do
      @calc.quarters.must_equal 8
    end

    it "should have 1 dime" do
      @calc.dimes.must_equal 1
    end

    it "should have 1 nickel" do
      @calc.nickels.must_equal 1
    end

    it "should have 2 pennies" do
      @calc.pennies.must_equal 2
    end
  end

  describe "when given 3.34" do
    before do
      @calc = ChangeCalculator.new(3.34)
    end

    it "should have 13 quarters" do
      @calc.quarters.must_equal 13
    end

    it "should have 0 dimes" do
      @calc.dimes.must_equal 0
    end

    it "should have 1 nickel" do
      @calc.nickels.must_equal 1
    end

    it "should have 4 pennies" do
      @calc.pennies.must_equal 4
    end
  end
end
