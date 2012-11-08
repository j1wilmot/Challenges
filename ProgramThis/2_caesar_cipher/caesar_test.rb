require 'minitest/autorun'
require './caesar.rb'

class CaesarTest < MiniTest::Unit::TestCase

	def run_caesar_test(expected, input, shift)
		# test both methods for each test
		assert_equal expected, Caesar.shift(input, shift)
		assert_equal expected, Caesar.shift2(input, shift)
	end

	def test_start_lower
		string = "a"
		shift = 1
		expected = "b"
		run_caesar_test expected, string, shift
	end

	def test_start_upper
		string = "A"
		shift = 1
		expected = "B"
		run_caesar_test expected, string, shift
	end

	def test_end_lower
		string = "z"
		shift = 1
		expected = "a"
		run_caesar_test expected, string, shift
	end

	def test_end_upper
		string = "Z"
		shift = 1
		expected = "A"
		run_caesar_test expected, string, shift
	end

	def test_hello_world
		string = "Hello, World!"
		shift = 1
		expected = "Ifmmp, Xpsme!"
		run_caesar_test expected, string, shift
	end

	def test_zebra
		string = "zebra"
		shift = 1
		expected = "afcsb"
		run_caesar_test expected, string, shift
	end

	def test_message
		string = "This message will be encoded with ROT13"
		shift = 13
		expected = "Guvf zrffntr jvyy or rapbqrq jvgu EBG13"
		run_caesar_test expected, string, shift
	end

end
