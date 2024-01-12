# HashMap Implementation in Ruby

This is an exercise that implements a hash map structure in the Ruby language. Done as part of [The Odin Project curriculum](https://www.theodinproject.com/lessons/ruby-hashmap).

This repository contains a comprehensive implementation of a hash map in Ruby, featuring a robust linked list for handling collisions. The implementation is designed with scalability and simplicity in mind, making it suitable for a wide range of applications.

## Files Included

### `linked_list.rb`

This file defines the `LinkedList` class, a fundamental component for handling collisions in the hash map. The linked list is a dynamic data structure that allows for efficient insertion and retrieval of key-value pairs. Each node in the linked list contains a key, data, and a reference to the next node.

### `hashmap.rb`

The `HashMap` class is the core component of this repository, showcasing a powerful hash map implementation utilizing the linked list for managing collisions. The hash map is initialized with a fixed number of buckets (default: 16) to store key-value pairs efficiently. It provides methods for setting key-value pairs, retrieving values by key, checking for key existence, clearing all elements, and obtaining arrays of keys, values, and entries.

### `node.rb`

The `Node` class defines the structure of a node in the linked list. Each node encapsulates a key, data, and a reference to the next node. This class is an integral part of the linked list and contributes to the overall functionality of the hash map.

## Usage Example

```ruby
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
```
