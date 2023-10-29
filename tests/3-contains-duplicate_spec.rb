require 'minitest/autorun'
require_relative '../3-contains-duplicate'
class TestContainsDuplicate < Minitest::Test
  def test_contains_duplicate_true
    assert_equal(true, contains_duplicate([1,2,3,4,5,6,7,8,9,10,1]))
  end

  def test_contains_duplicate_false
    assert_equal(false, contains_duplicate([1,2,3,4,5,6,7,8,9,10]))
  end

  def test_contains_duplicate_empty_array
    assert_equal(false, contains_duplicate([]))
  end
end