# test_lesson02_03.rb
require "test/unit"

class TestLesson0203 < Test::Unit::TestCase
  def test_takaaki
    assert_equal('takaaki', 'taka' + 'aki')
  end
  
  def test_plus
    assert_equal(50, 20 + "30".to_f)
  end
  
  def test_object
    name = "takaaki"
    assert_equal('takaaki', name)
  end
  
  def test_fail
    require "" # => Error
  end
  
  def test_fail_2
    foo_bar_lorem() # => Error
  end
  
  def test_mutiplication
    number = 2 * 30
    assert_equal(80, number) # => Failure
  end
end