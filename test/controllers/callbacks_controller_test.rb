require 'test/unit'
require '../../test/helpers/string_extension'

class CallbacksControllerTest < Test::Unit::TestCase
  def test_true_is_true
    assert true, "True should be true"
  end

  def test_is_number
    assert "3".is_number?
  end

  def test_is_not_number
    assert !"Blaaah".is_number?
  end

  def test_humanize_function_added_to_string
    assert_respond_to "blah", :humanize
  end

  def test_humanize_return_something
    assert_not_nil "Yo".humanize, "humanize is returned nil"
  end

  def test_humanize
    assert_equal "Likes my brains!", "LIKES MY BRAINS!".humanize #1 - expected, 2 -actual
  end

  def test_just_for_brains
    assert_match /brains/, "LIKES MY BRAINS!".humanize #1 - regex, 2 - string
  end

  def test_zombie_in_humanize_raises_error
    assert_raise(RuntimeError){ "zombie".humanize }
  end
end