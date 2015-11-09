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
end