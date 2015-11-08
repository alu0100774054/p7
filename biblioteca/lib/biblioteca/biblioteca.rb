require 'biblioteca/version'
#module Biblioteca
	class Libro
		attr_accessor :autor, :titulo, :editorial, :nEdicion, :fecha
		def initialize titulo, editorial, nEdicion, fecha
			@autor = []
			@titulo = titulo
			@editorial = editorial
			@nEdicion = nEdicion
			@fecha = fecha
		end
		def set_autor(autor)
			@autor.push autor
		end
	end
#end

