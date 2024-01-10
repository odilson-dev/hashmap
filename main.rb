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

    
end