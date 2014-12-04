require_relative 'practice1'
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class EnumsTest < Minitest::Test
  def test_it_can_find_even_numbers
    assert_includes(evens, 22)
    assert_includes(evens, 938)
    assert_includes(evens, 102)
    assert_predicate(evens(1), :even?)
    assert_predicate(odds(0), :odd?)
  end

  def test_it_square_each_number
    assert_equal 2500, Enums.new.square(50)
    assert_equal 126025, Enums.new.square(355)
  end

  def test_it_can_determine_divisbility
    assert_includes(divisible, 558)
  end

  def test_it_can_split_numbers_into_two_sets_of_numbers_above_and_below_500
    assert_equal 77, Enums.new.below.count
    assert_equal 73, Enums.new.above.count
  end

  def test_it_can_print_in_ascending_order_using_place_marker
    output = ""
    ascending_order
    assert_includes output, "3. 22"
  end

  def test_it_can_print_in_ascending_order_using_place_marker
    output = ""
    ascending_order
    assert_includes output, "31. 162"
  end

  def test_can_sum_all_numbers_between_600_and_700
    assert 10411, Enums.new.sum
  end

  def test_it_can_group_by_hundreds_sorted_in_increasing_order
    assert_equal 17, Enums.new.one_hundreds.count
    assert_includes(one_hundreds, 175)
    assert_equal 15, Enums.new.two_hundreds.count
    assert_includes(two_hundreds, 293)
    assert_equal 15, Enums.new.three_hundreds.count
    assert_includes(three_hundreds, 353)
  end

  def test_it_can_find_all_numbers_which_have_the_digit_6
    assert_equal 34, Enums.new.sixes.count
    assert_includes(sixes, 64)
    assert_includes(sixes, 162)
    assert_includes(sixes, 846)
  end
end
