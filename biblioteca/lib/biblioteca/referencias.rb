require 'biblioteca/version'

class Referencias
	attr_accessor :autorNombre, :autorApellido, :titulo, :fecha, :lugar_publicacion, :editorial, :nEdicion, :volumen, :APA

	def initialize(titulo, fecha, lugar_publicacion=nil, editorial, nEdicion, volumen)
		@autorNombre = []
		@autorApellido = []
		@titulo = titulo
		@lugar_publicacion = lugar_publicacion
		@editorial = editorial
		@nEdicion = nEdicion
		@volumen = volumen	
		@fecha = fecha
		@isbn = []
		@APA = ""
	end
	def set_fecha_APA
		@APA+="("
		@APA+=@fecha
		@APA+="). "
	end
	def set_titulo_APA
		@APA+=@titulo
		@APA+=". "
	end
	def set_edicion_APA
		@APA+="("
		@APA+=@nEdicion
		@APA+=") "
	end
	def set_volumen_APA
		@APA+="("
		@APA+=@volumen
		@APA+="). "
	end
	def set_lugar_publicacion_APA
		@APA+=@lugar_publicacion
		@APA+=": "
	end
	def set_editorial_APA
		@APA+=@editorial
		@APA+="."
	end
	def set_autor(nombre,apellido)
		@autorNombre.push(nombre)
		@autorApellido.push(apellido)
		@APA+=apellido
		@APA+="."
		@APA+=nombre
		@APA+=","
	end
	def set_isbn
		@isbn.push digito
	end
	def poner_APA
		set_fecha_APA
		set_titulo_APA
		set_edicion_APA
		set_volumen_APA
		set_lugar_publicacion_APA
		set_editorial_APA
	end
end