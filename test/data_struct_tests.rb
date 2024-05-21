require "sibyl"
require "test/unit"

class TestNewDb < Test::Unit::TestCase
  def test_accessors
    sb = Sibyl.new
    sb.fn = "John Smith"
    assert_equal(rf.fn, "John Smith")
  end
end
