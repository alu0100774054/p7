require 'biblioteca/version'
require 'biblioteca/biblioteca'

class Node

    attr_accessor :value, :next_node, :before_node

    def initialize before_in_line,val,next_in_line
        @before_node = before_in_line
        @value = val
        @next_node = next_in_line
        puts "Initialized a Node with value:  " + value.to_s 
    end
end