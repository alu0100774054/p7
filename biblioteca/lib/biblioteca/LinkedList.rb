require 'biblioteca/version'

class LinkedList
    def initialize val
        @head = Node.new(val,nil)
    end
    def add(value)
        current = @head
        while current.next_node != nil
            current = current.next_node
        end 
        current.next_node = Node.new(value,nil)
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
end