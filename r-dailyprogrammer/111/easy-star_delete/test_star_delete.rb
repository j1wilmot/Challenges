require 'minitest/autorun'
require './star_delete.rb'

class TestStarDelete < MiniTest::Unit::TestCase

	def test_basic
		assert_equal "adp", star_delete("adf*lp")
	end

	def test_empty_result
		assert_equal "", star_delete("a*o")
	end

	def test_end_points
		assert_equal "ec", star_delete("*dech*")
	end

	def test_adjacent_stars
		assert_equal "do", star_delete("de**po")
	end

	def test_overlapping_stars
		assert_equal "si", star_delete("sa*n*ti")
	end

	def test_no_stars
		assert_equal "abc", star_delete("abc")
	end
end
