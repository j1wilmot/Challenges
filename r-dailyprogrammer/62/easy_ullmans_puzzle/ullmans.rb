# Given a list of n real numbers, a real number t, and an integer k,
# determine if there exists a k-element subset of the original list of n real numbers that is less than t.

def ullman(nums, t, k)
  return false if nums.size < k
  nums.sort[0...k].reduce(:+) < t
end

require 'minitest/autorun'

class UllmanTest < MiniTest::Unit::TestCase

  def test_run
    nums = [18.1, 55.1, 91.2, 74.6, 73.0, 85.9, 73.9, 81.4, 87.1, 49.3, 88.8, 5.7, 26.3, 7.1, 58.2, 31.7, 5.8, 76.9, 16.5, 8.1, 48.3, 6.8, 92.4, 83.0, 19.6]
    t = 98.2
    k = 3
    assert ullman(nums, t, k)
  end

  def test_k_greater_than_array_size
    nums = [19.2]
    t = 18.2
    k = 2
    assert !ullman(nums, t, k)
  end

  def test_simple
    nums = [19.2]
    t = 28.2
    k = 1
    assert ullman(nums, t, k)
  end

  def test_non_contiguous
    nums = [1.1, 1.2, 10.1, 1.3]
    t = 9.0
    k = 3
    assert ullman(nums, t, k)
  end

end
