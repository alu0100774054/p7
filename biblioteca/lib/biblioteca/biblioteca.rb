require 'biblioteca/version'
#module Biblioteca
	class Libro
		attr_accessor :autor, :titulo, :editorial
		def initialize titulo, editorial
			@autor = []
			@titulo = titulo
			@editorial = editorial
		end
		def set_autor(autor)
			@autor.push autor
		end
	end
#end

