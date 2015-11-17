require 'biblioteca/version'
require 'biblioteca/biblioteca'

class Elibro < Libro
	attr_accessor :url
	def initialize(titulo, editorial, nEdicion, fecha,url)
		super(titulo, editorial, nEdicion, fecha,url)
		@url = url
	end	
end