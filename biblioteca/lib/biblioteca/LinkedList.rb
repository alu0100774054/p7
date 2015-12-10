require 'biblioteca/version'

class LinkedList
    include Enumerable
    def initialize val
        @head = Node.new(nil,val,nil)
    end
    def get_head
    	return @head
    end
    def add(value)
        current = @head
        while current.next_node != nil
            current = current.next_node
        end 
        current.next_node = Node.new(current,value,nil)
        self    
    end
    def delete(val)
        current = @head
        if current.value == val
            @head = @head.next_node
        else         
            current = @head
            while (current != nil) && (current.next_node != nil) && ((current.next_node).value != val)
                current = current.next_node
            end 

            if (current != nil) && (current.next_node != nil)
                current.next_node = (current.next_node).next_node
            end
        end
    end
    def delete_first()
    	current = @head
    	if @head.next_node == nil
    		puts "Lista Vacía"
    	else
    		@head = @head.next_node
    		@current.next_node = nil
    	end
    end
    def display
        current = @head
        full_list = [] 
        while current.next_node != nil 
            full_list += [current.value.to_s]
            current = current.next_node
        end
        full_list += [current.value.to_s]
        puts full_list.join("->")
    end
    def each
        current = @head
        while current.next_node != nil
<<<<<<< HEAD
            yield current
=======
            yield
>>>>>>> origin/master
            current = current.next_node
        end 
    end
end