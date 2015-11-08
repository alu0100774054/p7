require 'spec_helper'
require 'bib'

describe Libro do
	before :each do
		@Libro = Libro.new(:autor)
	end
	describe "#new" do
		it "recibe un parametro y crea un objeto tipo Libro" do
			@Libro.should be_an_instance_of Libro
		end
		it "recibe el autor" do
			@Libro.autor.should have_at_least(1).items
		end
	end
	
end