require_relative '../4-product-of-array-except-self'
require 'minitest/autorun'

class TestProductExceptSelf < Minitest::Test
  def test_returns_correct_product_array
    assert_equal [24, 12, 8, 6], product_except_self([1, 2, 3, 4])
  end

  def test_handles_empty_array
    assert_equal [], product_except_self([])
  end

  def test_handles_array_with_one_element
    assert_equal [1], product_except_self([5])
  end

  def test_handles_array_with_zeros
    assert_equal [0, 0, 8, 0], product_except_self([1, 2, 0, 4])
  end

  def test_handles_array_with_negative_numbers
    assert_equal [60, -40, 30, -24], product_except_self([-2, 3, -4, 5])
  end
end

