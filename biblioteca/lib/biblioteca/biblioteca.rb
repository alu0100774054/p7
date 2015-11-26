require 'biblioteca/version'
#module Biblioteca
	class Libro
		include Comparable
		attr_accessor :autor, :titulo, :editorial, :nEdicion, :fecha, :isbn
		def initialize titulo, editorial, nEdicion, fecha
			@autor = []
			@titulo = titulo
			@editorial = editorial
			@nEdicion = nEdicion
			@fecha = fecha
			@isbn = []
		end
		def set_autor(autor)
			@autor.push autor
		end
		def get_autor(indice)
			return @autor[indice]
		end
		def set_isbn(digito)
			@isbn.push digito
		end
		def get_isbn(indice)
			return @isbn[indice]
		end
		def get_titulo()
			return @titulo
		end
		def get_editorial()
			return @editorial
		end
		def get_nEdicion()
			return @nEdicion
		end
		def get_fecha()
			return @fecha
		end

		def <=>(other)
        	return nil unless other.instance_of? Libro
        	@titulo <=> other.titulo
    	end
    	def each
	       yield @autor
	       yield @titulo
	       yield @editorial
	       yield @nEdicion
	       yield @fecha
	       yield @isbn
    	end
	end
#end

