class Node
    attr_accessor :key, :data, :next_node
  
    def initialize(key, data)
      @key = key
      @data = data
      @next_node = nil
    end
end