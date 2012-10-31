require 'minitest/autorun'
require './digits_check.rb'

class TestDigitsCheck < MiniTest::Unit::TestCase
	def test_simple_digit
		test = "0123"
		assert digits_check(test)
	end
	
	def test_simple_nondigit
		test = "0123a"
		assert !digits_check(test)
	end

	def test_simple_digit_regex
		test = "0123"
		assert digits_check_regex(test)
	end
	
	def test_simple_nondigit_regex
		test = "a"
		assert !digits_check_regex(test)
	end

	def test_decimal
		test = "123.123"
		assert !digits_check(test)
		assert !digits_check_regex(test)
	end

end

