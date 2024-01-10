require_relative "node"

class HashMap
    def initialize
        @buckets =  Array.new(16)
    end


    def hash(string)
        hash_code = 0
        prime_number = 31
      
        string.each_char { |char| hash_code = prime_number * hash_code + char.ord }
      
        hash_code
    end

    def set(key, value)
        index = hash(key) % 16
        @buckets[index] = Node.new(key, value)
    end

    def capacity
        @buckets.length
    end

    # return the amount of buckets that is not nil
    def amount_buckets_filled
        @buckets.count { |x| !x.nil? }
    end

    def get(key)
        @buckets[key]
    end

    
end


