require_relative "node"


class LinkedList
    def initialize
        @head = nil
    end

    def append(key, data)
        new_node = Node.new(key, data)
        if @head.nil?
        @head = new_node
        else
        current_node = @head
        while current_node.next_node
            current_node = current_node.next_node
        end
        current_node.next_node = new_node
        end
    end
end
  
  