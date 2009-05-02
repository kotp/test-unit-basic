# test_lesson02-02-04.rb

require "test/unit"
class TestLesson020204 < Test::Unit::TestCase
  def test_true
    assert_equal(true, true) #=> pass
  end
  def test_false
    assert_equal(false, false) #=> pass
  end
  def test_fail
    assert_equal(true, false) #=> fail
  end
  def test_error
    foobar #=> error
  end
end