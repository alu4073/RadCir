require "Rdc"
require "test/unit"
class TestRdc < Test::Unit::TestCase
	def test_simple
		assert_in_delta(5, Rdc.new.calculo(31.4), 0, "Fallo al calcular radio" )
	end
	def test_error_letras
		if (assert_nothing_raised(RuntimeError){Rdc.new.calculo('a')})
			puts "\n ArgumentError!! Hubo un error al pasar un String"
		end
	end 
	def test_numero_negativo

		if (assert_nothing_raised(RuntimeError){Rdc.new.calculo(-31.4)})

		#assert_nil( Rdc.new.calculo(-31.4),  "Resultado no fue nil" ) == nil
			puts "\n Hubo un error al pasar un numero negativo"
		end
	end

end
