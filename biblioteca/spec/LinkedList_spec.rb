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
end