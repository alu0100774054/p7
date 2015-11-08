require 'biblioteca/version'
#module Biblioteca
	class Libro
		attr_accessor :autor, :titulo, :editorial, :nEdicion
		def initialize titulo, editorial, nEdicion
			@autor = []
			@titulo = titulo
			@editorial = editorial
			@nEdicion = nEdicion
		end
		def set_autor(autor)
			@autor.push autor
		end
	end
#end

