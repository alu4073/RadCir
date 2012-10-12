require "Rdc"
require "test/unit"
class TestRdc < Test::Unit::TestCase
	def test_simple
		assert_in_delta(5, Rdc.new.calculo(31.4), 0, "Fallo al calcular radio" )
	end
	def test_error_letras
		assert_raise(RuntimeError){Rdc.new.calculo('a')}
	end 
	def test_numero_negativo
		assert_raise(RuntimeError){Rdc.new.calculo(-31.4)}
	end

end
