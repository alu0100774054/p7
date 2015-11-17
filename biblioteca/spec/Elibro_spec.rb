require 'spec_helper'
require 'bib'

describe Elibro do
	before :each do
		@Elibro = Elibro.new("titulo", "editorial", "edicion1", "fecha","url")
	end
	describe "#new" do
		it "recibe parametros y crea un objeto tipo Elibro" do
			@Elibro.should be_an_instance_of Elibro
		end
		it "Elibro hereda de Libro?" do
			@Elibro.is_a? Libro
		end
	end	
end