class Decode
	def initialize()
		@trans = {}
		char = 'a'
		1.upto(26) do |i|
			@trans[i] = char
			char = char.next
		end
	end

	def decode(num, results = [])
		return results if num.to_s.length == 0
		return [ @trans[num] ] if num.to_s.length == 1
		if num.to_s.length == 2
			return [ num, decode(Integer(num.to_s[1])) ]
		end
	end

end


require 'minitest/autorun'

class DecodeTest < MiniTest::Unit::TestCase

	def setup
		@decode = Decode.new
	end

#	def test_basic
#		expected = %w[ abc aw lc]
#		assert_equal expected, decode("123")
#	end

	def test_empty
		assert_equal [nil], @decode.decode(0)
	end

	def test_length_one
		assert_equal ["a"], @decode.decode(1)
	end

	def test_length_two
		assert_equal ["a", "k"], @decode.decode(11)
	end

end
