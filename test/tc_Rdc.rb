require "Rdc"
require "test/unit"
class TestRdc < Test::Unit::TestCase
	def test_simple
		assert_equal(2, Rdc.new(3).calculo(3.14))
	end
end
