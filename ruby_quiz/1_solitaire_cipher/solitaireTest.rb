require 'solitaire'
require 'test/unit'

class TestSolitaire < Test::Unit::TestCase
	
	def testDiscardNonAlphaAndUpper
		msg = "This is a_+test!"
		expected = "THISISATEST"
		s = Solitaire.new(msg)
		cipher = s.discardNonAlpha(msg)
		assert_equal(expected, cipher)
	end

	def test5CharGrouping
		msg = "thisisatest"
		expected = "thisi sates tXXXX"
		s = Solitaire.new(msg)
		result = s.groupInto5Chars(msg)
		assert_equal(expected, result)
	end

	def testStage1
		msg = "Code in Ruby, live longer!"
		expected = "CODEI NRUBY LIVEL ONGER"
		s = Solitaire.new(msg)
		result = s.cipher
		assert_equal(expected, result)
	end
end
