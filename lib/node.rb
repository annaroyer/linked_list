require 'pry'
class Node
  attr_reader :data, :next_node
  attr_accessor :next_node

  def initialize(data, next_node=nil)
    @data = data
    @next_node = next_node
  end

  def count_list(count=0)
    count += 1
    return count if next_node.nil?
    next_node.count_list(count)
  end

  def traverse
    return self if next_node.nil?
    next_node.traverse
  end

  def append(value, tail=nil)
    @next_node = Node.new(value, tail)
    return value
  end

  def concatenate(list_string="")
    list_string += data.to_s
    return list_string if next_node.nil?
    next_node.concatenate(list_string)
  end

  def insert(index, value)
    until index == 1
      index -= 1
      next_node.insert(index, value)
    end
    append(value, next_node)
  end
end
