require 'spec_helper'
require 'bib'

describe LinkedList do 
	before :each do 
		@List = LinkedList.new(2)
	end
	describe "#new" do
		it "recibe parametros y crea un objeto tipo Node" do
			@List.should be_an_instance_of LinkedList
		end
	end
	describe "#add" do
		it "inserta un elemento en la LinkedList" do 
			@List.add(3)
		end
	end
	describe "#delete" do
		it "borra un valor en la lista especificado por parametro" do
			@List.delete(3)
		end
	end

end