require "sibyl"
require "test/unit"

class TestNewDb < Test::Unit::TestCase
  def test_accessors
    sb = Sibyl.new
    sb.add_card("John Smith")
    assert_equal(sb.cards[0].fn, "John Smith")
  end
end
