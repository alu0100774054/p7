require 'spec_helper'
require 'bib'

describe Libro do
	before :each do
		@Libro = Libro.new("titulo", "editorial", "edicion1", "fecha")
		@Libro.set_autor("autor_ejemplo")
	end
	describe "#new" do
		it "recibe parametros y crea un objeto tipo Libro" do
			@Libro.should be_an_instance_of Libro
		end
		it "recibe el autor" do
			@Libro.autor.should have_at_least(1).items
		end
		it "devuelve el titulo" do
			@Libro.titulo.should eql "titulo"
		end
		it "devuelve el numero de edicion" do
			@Libro.nEdicion.should eql "edicion1"
		end
		it "devuelve la fecha" do
			@Libro.fecha.should eql "fecha"
		end
		it "recibe el autor" do
			@Libro.autor.should have_at_least(1).items
		end
	end
	
end