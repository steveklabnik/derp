require 'minitest/autorun'

puts "LET'S GET READY TO DEEEEEEEEEERRRRRRRRRRRRRRRRP!!!!!!!!!!1"
require 'derp'

class TestDerp < MiniTest::Unit::TestCase
  def setup
    @derp = "derp!"
  end

  def test_to_derp_exists
    assert_respond_to @derp, :to_derp
  end

  def test_to_derp_returns_string
    assert_instance_of String, @derp.to_derp
  end

  def test_herps_and_derps
    assert_equal "a".to_derp, "herpderp"
  end

  def test_multiple_words
    assert_equal "a a".to_derp, "herpderp . herpderp"
  end

  def test_long_words
    assert_equal "aa".to_derp, "herpderp herpderp"
  end

end
