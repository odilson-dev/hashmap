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

    # To retrieve the value using a key, this method hash the key, and calculate bucket's key number(index)
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

    def key?(key)
        key.positive? and key < capacity ? true : false
    end

    def clear
        @buckets.clear
    end

    
end


