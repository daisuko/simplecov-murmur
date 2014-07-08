
require "test_helper"
require "minitest/autorun"

class TestSimpleCovMurMur < MiniTest::Test
  def test_defined
    assert defined?(SimpleCov::Formatter::MurMurFormatter)
    assert defined?(SimpleCov::Formatter::MurMurFormatter::VERSION)
  end
end

