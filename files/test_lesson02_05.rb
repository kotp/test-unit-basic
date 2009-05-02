# test_lesson02_05.rb
require "test/unit"
class TestLesson0205 < Test::Unit::TestCase
  def test_assert
    assert [1, 2].include?(5), "1,2 includes 5"
  end
  
  def test_assert_block
    assert_block "Couldn't do the thing" do
      do_the_thing
    end
  end
  
  def test_assert_equal
    assert_equal 'MY STRING', 'my string'.upcase, 'upcase should upcase all the characters'
  end
    
  def test_assert_in_delta
    assert_in_delta 0.05, (50000.0 / 10**6), 0.00001
  end
  
  def test_assert_instance_of
    assert_instance_of String, 'foo', 'foo is an instance of String class'
  end
  
  def test_assert_kind_of
    assert_kind_of Object, 'foo', 'foo is a kind of Object class'
  end
    
  def test_assert_match
    assert_match(/\d+/, 'five, 6, seven', 'the string have at least one digit')
  end
    
  def test_assert_nil
    assert_nil [1, 2].uniq!
  end
    
  def test_assert_no_match
    assert_no_match(/two/, 'one 2 three', "2 doesn't match with 'two'.")
  end
  
  def test_assert_not_equal
    assert_not_equal 'some string', 5
  end
  
  def test_assert_not_nil
    assert_not_nil '1 two 3'.sub!(/two/, '2')
  end
  
  
  def test_assert_not_same
    assert_not_same Object.new, Object.new, "Two new Object's shouldn't be the same"
  end
  
  def test_assert_nothing_raised
    assert_nothing_raised do
        [1, 2].uniq
    end
  end
  
  def test_assert_nothing_thrown
    assert_nothing_thrown do
       [1, 2].uniq
     end    
  end

  def test_assert_operator
    assert_operator 5, :>=, 4
  end
      
  def test_assert_raise
    assert_raise RuntimeError, LoadError do
      raise 'Boom!!!'
    end
  end      
       
  def test_assert_respond_to
    assert_respond_to 'bugbear', :slice     
  end
  
  def test_assert_same
    o = Object.new
    assert_same o, o
  end
       
  def test_assert_throws
    assert_throws :done do
      throw :done
    end
  end
      
  def test_assert_flunk
    flunk 'Not done testing yet.'
  end
end