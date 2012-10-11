#Definimos la clase
class Rdc
	def initialize
		# Inicializo el valor de PI a 3.14
		@pi = 3.14
	end
	def calculo(p)
		@per = p
		if @per.class == String
			raise ' El argumento no puede ser un String!!!'
		else
			if (@per > 0.0)
				@pi = 2 * @pi
				@per / @pi   #Devolvemos el valor del radio
			else
				raise ' El argumento no puede ser numero positivo!!!'
			end
		end
	end
end

if ARGV.size == 1 
	@arg = ARGV.first.to_f
	# El perimetro no puede ser un valor negativo asi que debo controlarlo con un if
	# Si le paso algo que no sea un numero al convertirlo a float resulta 0.0
	# Como ese no es un valor valido de perimetro controlo que el perimetro sea > 0.0
	if (@arg <= 0.0)
		puts "\n *ERROR* Ha introducido un argumento para el perimetro no valido"
	else
		puts "\n -El radio para una circunferencia con perimetro #{@arg} es #{Rdc.new.calculo(@arg)}"
	end
end

