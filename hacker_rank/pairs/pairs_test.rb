require 'minitest/autorun'

class PairsTest < MiniTest::Unit::TestCase

  def test1
    input = "5 2\n 1 5 3 4 2\n"
    output = Integer `echo \"#{input}\" | ruby pairs.rb`
    assert_equal 3, output
  end

  def test2
    input = "10 1\n363374326 364147530 61825163 1073065718 1281246024 1399469912 428047635 491595254 879792181 1069262793\n"
    output = Integer `echo \"#{input}\" | ruby pairs.rb`
    assert_equal 0, output
  end

end
