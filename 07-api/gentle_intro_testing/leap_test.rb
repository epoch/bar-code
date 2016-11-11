require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'leap'

class LeapTest < MiniTest::Test

  def test_year_2016
    # expected output 
    # actual output
    assert_equal true, leap_year?(2016)
  end

  def test_year_2017
    assert_equal false, leap_year?(2017)
  end

  def test_year_1900
    assert_equal false, leap_year?(1900)
  end

  def test_year_2000
    assert_equal true, leap_year?(2000)
  end

  def test_year_2000_as_float
    assert_equal true, leap_year?(2000.0)
  end

end