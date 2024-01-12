require_relative "linked_list"

class HashMap
    attr_accessor :buckets
    def initialize
        @buckets =  Array.new(16) { LinkedList.new }
    end


    def hash(string)
        hash_code = 0
        prime_number = 31
      
        string.each_char { |char| hash_code = prime_number * hash_code + char.ord }
      
        hash_code
    end

    def set(key, value)
        index = hash(key) % 16
        @buckets[index].append(key, value)
    end

    def capacity
        @buckets.length
    end

    # returns the number of stored keys in the hash map.
    def length
        count = 0
        @buckets.each do |x|
            current_node = x.head
            if !current_node.nil?
                count += 1
                while current_node.next_node
                    count += 1
                    current_node = current_node.next_node
                end
            end
        end
        count
    end

    #get takes one argument as a key and returns the value that is assigned to this key. If key is not found, return nil. To retrieve the value using a key, it hashes the key, and calculate the bucket's key number(index). 
    def get(key)
        
        index = hash(key) % 16
        # If the bucket is not empty
        if @buckets[index].head.nil?
            return nil
        else
            node =  @buckets[index].head
            while true
                if node.key == key
                    return node.data
                elsif node.next_node
                    node = node.next_node
                    next
                else
                    node.next_node
                    break
                end
            end
        end
    end

    #key? takes a key as an argument and returns true or false based on whether or not the key is in the hash map
    def key?(key)
        index = hash(key) % 16
        # If the bucket is not empty
        if @buckets[index].head.nil?
            return false
        else
            node =  @buckets[index].head
            while true
                if node.key == key
                    return true
                elsif node.next_node
                    node = node.next_node
                    next
                else
                    return false
                end
            end
        end
    end

    # #clear removes all the elements from the hashmap
    def clear
        @buckets.clear
    end

    #keys returns an array containing all the keys inside the hash map
    def keys
        all_keys = []
        @buckets.each do |elem|
            if !elem.head.nil?
                current_node = elem.head
                while current_node
                    all_keys << current_node.key
                    current_node = current_node.next_node
                end
            end
        end
        all_keys
    end
    
    # values returns an array containing all the values.
    def values
        all_values = []
        @buckets.each do |elem| 
            if !elem.head.nil?
                current_node = elem.head
                while current_node
                    all_values << current_node.data
                    current_node = current_node.next_node
                end
            end
        end
        all_values
    end
    # entries returns an array that contains each key, value pair. Example: [[first_key, first_value], [second_key, second_value]]
    def entries
        all_entries = []
        @buckets.each do |elem| 
            if !elem.head.nil?
                current_node = elem.head
                while current_node
                    all_entries << [current_node.key, current_node.data]
                    current_node = current_node.next_node
                end
            end
        end
        all_entries
    end
end
