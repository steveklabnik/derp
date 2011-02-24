require 'minitest/autorun'

class TestDerp < MiniTest::Unit::TestCase
  def setup
    puts "LET'S GET READY TO DEEEEEEEEEERRRRRRRRRRRRRRRRP!!!!!!!!!!1"
  end

  def test_derp_exists
    derp = "derp!"
    assert_respond_to derp, :to_derp
  end

end
