require 'spec_helper'
require 'bib'

describe Libro do
	before :each do
		@Libro = Libro.new("titulo", "editorial", "edicion1", "fecha")
		@Libro.set_autor("autor_ejemplo")
		@Libro1 = Libro.new("titulo1", "editorial1", "edicion2", "fecha1")
		@Libro1.set_autor("autor_ejemplo1")

	end
	describe "#new" do
		it "recibe parametros y crea un objeto tipo Libro" do
			@Libro.should be_an_instance_of Libro
		end
		#it "recibe el autor" do
		#	@Libro.autor.should have_at_least(1).items
		#end
		it "devuelve el titulo" do
			@Libro.titulo.should eql "titulo"
		end
		it "devuelve el numero de edicion" do
			@Libro.nEdicion.should eql "edicion1"
		end
		it "devuelve la fecha" do
			@Libro.fecha.should eql "fecha"
		end
	end	
	 context "Comparable" do
        it "Libro1 > Libro, según el titulo" do
            expect(@Libro1 > @Libro).to eq(true)
        end
    end
end
