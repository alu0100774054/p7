require 'spec_helper'
require 'bib'

describe LinkedList do 
	before :all do
		#Libro 1
		@Libro1 = Libro.new("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)",
							 "Pragmatic Bookshelf", 
							 "4 edition", 
							 "July 7, 2013") 
		@Libro1.set_autor("Dave Thomas")
		@Libro1.set_autor("Andy Hunt")
		@Libro1.set_autor("Chad Fowler")
		@Libro1.set_isbn("ISBN-13: 978-1937785499")
		@Libro1.set_isbn("ISBN-10: 1937785491")

		#Libro 2
		@Libro2 = Libro.new("Pro Git 2009th Edition. (Pro)",
							 "Apress", 
							 "2009 edition", 
							 "August 27, 2009") 
		@Libro2.set_autor("Scott Chacon")
		@Libro2.set_isbn("ISBN-13: 978- 1430218333")
		@Libro2.set_isbn("ISBN-10: 1430218339")

		#Libro 3
		@Libro3 = Libro.new("The Ruby Programming Language",
							 "O’Reilly Media", 
							 "1 edition", 
							 "Fe- bruary 4, 2008") 
		@Libro3.set_autor("David Flanagan")
		@Libro3.set_autor("Yukihiro Matsumoto")
		@Libro3.set_autor("Chad Fowler")
		@Libro3.set_isbn("ISBN-13: 978-0596516178")
		@Libro3.set_isbn("ISBN-10: 0596516177")

		#Libro 4
		@Libro4 = Libro.new("The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)",
							 "Pragmatic Bookshelf", 
							 "1 edition", 
							 "December 25, 2010") 
		@Libro4.set_autor("David Chelimsky")
		@Libro4.set_autor("Dave Astels")
		@Libro4.set_autor("Bryan Helmkamp")
		@Libro4.set_autor("Dan North")
		@Libro4.set_autor("Zach Dennis")
		@Libro4.set_autor("Aslak Hellesoy")
		@Libro4.set_isbn("ISBN-13: 978-1934356371")
		@Libro4.set_isbn("ISBN-10: 1934356379")

		#Libro 5
		@Libro5 = Libro.new("Git Pocket Guide",
							 "O’Reilly Media", 
							 "1 edition", 
							 "August 2, 2013") 
		@Libro5.set_autor("Richard E. Silverman")
		@Libro5.set_isbn("ISBN-13: 978-1449325862")
		@Libro5.set_isbn("ISBN-10: 1449325866")
		
		@Revista1 = Revista.new("The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)",
							 "Pragmatic Bookshelf", 
							 "1 edition", 
							 "December 25, 2010",
							 "12345678")
		@Revista2 = Revista.new("The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)",
							 "Pragmatic Bookshelf", 
							 "1 edition", 
							 "December 25, 2010",
							 "http://www.amazon.es/The-RSpec-Book-Behaviour-Development/dp/1934356379")
		@Node1 = Node.new(nil,@Revista1,nil)
		@Node2 = Node.new(@node1,@Revista2,nil)
		@List = LinkedList.new(@Node1)
	end
	describe "#new" do
		it "recibe parametros y crea un objeto tipo Node" do
			@List.should be_an_instance_of LinkedList
		end
	end
	describe "#add" do
		it "inserta un elemento en la LinkedList" do 
			@List.add(@Node2)
			@List.should be_true
		end
	end
	describe "#delete" do
		it "borra un valor en la lista especificado por parametro" do
			@List.delete(@Node2)
			@List.should be_true
		end
		it "borra el primer elemento de la lista" do
			@List.delete_first()
			@List.should be_true
		end
	end
	describe "Enumerable" do
        it"comprobando any?" do
           expect(@list.any?).to eq(true)
        end
        it "Comprobando count" do
           expect(@list.count).to eq(1) 
        end
    end

end