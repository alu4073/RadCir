#Definimos la clase
class Rdc
	def initialize
		# Inicializo el valor de PI a 3.14
		@pi = 3.14
	end
	def calculo(p)
		@per = p
		@pi = 2 * @pi
		@per / @pi
	end
end

if ARGV.size == 1 
	@arg = ARGV.first.to_f
	# El perimetro no puede ser un valor negativo asi que debo controlarlo con un if
	# Si le paso algo que no sea un numero al convertirlo a float resulta 0.0
	# Como ese no es un valor valido de perimetro controlo que el perimetro sea > 0.0
	if (@arg <= 0.0)
		puts " *ERROR* Ha introducido un argumento para el perimetro no valido"
	else
		puts " -El radio para una circunferencia con perimetro #{@arg} es #{Rdc.new.calculo(@arg)}"
	end
end

