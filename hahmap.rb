require_relative "linked_list"

class HashMap
    def initialize
        @buckets =  Array.new(LinkedList.new, 16)
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
        @buckets.count { |x| !x.head.nil? }
    end

    #get takes one argument as a key and returns the value that is assigned to this key. If key is not found, return nil. To retrieve the value using a key, it hashes the key, and calculate the bucket's key number(index). 
    def get(key)
        
        index = hash(key) % 16
        # If the bucket is not empty
        if @buckets[index].head.nil?
            return nil
        else
            node =  @buckets[index].head
            if node.key == key
                return node.data
            else
                return nil
            end
        end
    end

    #key? takes a key as an argument and returns true or false based on whether or not the key is in the hash map.
    def key?(key)
        key.positive? and key < capacity ? true : false
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
                all_keys << elem.key
                while elem.new_node
                    all_keys << elem.key
                    elem = elem.new_node
                end
            end
        end
    end
    
    # values returns an array containing all the values.
    def values
        all_values = []
        @buckets.each do |elem| 
            if !elem.head.nil?
                all_values << elem.data
                while elem.new_node
                    all_values << elem.data
                    elem = elem.new_node
                end
            end
        end
    end
    # entries returns an array that contains each key, value pair. Example: [[first_key, first_value], [second_key, second_value]]
    def entries
        all_entries = []
        @buckets.each do |elem| 
            if !elem.head.nil?
                all_entries << [elem.key, elem.data]
                while elem.new_node
                    all_entries << [elem.key, elem.data]
                    elem = elem.new_node
                end
            end
        end
    end
end
