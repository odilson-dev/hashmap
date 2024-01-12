require_relative "node"


class LinkedList
    attr_accessor :head
    
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

    def remove(key)
        return if @head.nil?
    
        # If the node to be removed is the head
        if @head.key == key
          @head = @head.next_node
          return
        end
    
        current_node = @head
        prev_node = nil
    
        # Traverse the list to find the node with the specified key
        while current_node && current_node.key != key
          prev_node = current_node
          current_node = current_node.next_node
        end
    
        # If the key is not found in the list
        return if current_node.nil?
    
        # Adjust pointers to remove the node
        prev_node.next_node = current_node.next_node
      end
end