require "Rdc"
require "test/unit"
class TestRdc < Test::Unit::TestCase
	def test_simple
		# (2.1/6.28) el radio tendra que resultar el perimetro (2.1) divido entre 2PI (6.28)
		assert_in_delta((2.1/6.28), Rdc.new.calculo(2.1), 0, "Fallo al calcular radio" )
	end
end
