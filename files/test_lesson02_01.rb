# test_lesson02_01.rb

require "test/unit"

# Make a test case
class TestLesson0201 < Test::Unit::TestCase
  # test method 1
  def test_true
    assert_equal(true, true)
  end
  # test method 2
  def test_false
    assert_equal(false, false)
  end
  # test method 3
  def test_foobar
    foobar
  end
  # test method 4
  def test_flunk
    flunk
  end
end