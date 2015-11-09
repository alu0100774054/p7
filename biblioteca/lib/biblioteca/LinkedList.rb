require 'biblioteca/version'

class LinkedList
    def initialize val
        @head = Node.new(val,nil)
    end
end