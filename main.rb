require_relative 'hashmap'

# Create a new HashMap
my_hash_map = HashMap.new

# Set key-value pairs
my_hash_map.set("name", "John")
my_hash_map.set("age", 25)
my_hash_map.set("city", "New York")

# Retrieve values
puts "Name: #{my_hash_map.get("name")}"
puts "Age: #{my_hash_map.get("age")}"
puts "City: #{my_hash_map.get("city")}"


# Display all keys, values, and entries
puts "All Keys: #{my_hash_map.keys}"
puts "All Values: #{my_hash_map.values}"
puts "All Entries: #{my_hash_map.entries}"

puts my_hash_map.key?("name")
puts my_hash_map.key?("age")
puts my_hash_map.key?("city")

puts my_hash_map.key?("hello")
