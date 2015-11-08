require 'spec_helper'
require 'bib'

describe Libro do
	before :each do
		@Libro = Libro.new
	end
	describe "#new" do
		it "takes three parameters and returns a Book object" do
			@Libro.should be_an_instance_of Libro
		end
	end
	
end