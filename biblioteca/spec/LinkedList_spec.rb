require 'spec_helper'
require 'bib'

describe Node do 
	before :each do 
		@Node = Node.new(2,nil)
	end
	describe "#new" do
		it "recibe parametros y crea un objeto tipo Node" do
			@Node.should be_an_instance_of Node
		end
	end
end