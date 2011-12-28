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
    assert_equal "herpderp", "a".to_derp
  end

  def test_multiple_words
    assert_equal "herpderp . herpderp", "a a".to_derp
  end

  def test_long_words
    assert_equal "herpderp herpderp", "aa".to_derp
  end

  def test_different_characters
    assert_equal "herpderp derpherpherpherp", "ab".to_derp
  end

  def test_from_derp_exists
    assert_respond_to @derp, :from_derp
  end

  def test_from_derp_returns_string
    assert_instance_of String, @derp.from_derp
  end

  def test_from_multiple_words
    assert_equal "a a", "herpderp . herpderp".from_derp
  end

  def test_from_long_words
    assert_equal "aa", "herpderp herpderp".from_derp
  end

  def test_from_different_characters
    assert_equal "ab", "herpderp derpherpherpherp".from_derp
  end

  def test_to_capital_letters
    assert_equal "herpderp herpderp", "AA".to_derp
  end

  def test_numbers
    assert_equal "1234567890".to_derp, "herpherpderpderp herpderpherpderp derpderpderpderp derpherpherpherpderp derpderpderpderpderp derpherpherpherpherp herpderpderpderpderp herpherpherpherpherp derpherpherpderpderp herpherpderpderpherp"
  end
end
