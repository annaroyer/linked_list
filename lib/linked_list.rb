require 'pry'
class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      @head.traverse.append(value)
    end
    return value
  end

  def count
    return 0 if @head.nil?
    @head.count_list
  end

  def to_s
    return "" if @head.nil?
    @head.concatenate
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
    else
      new_head = Node.new(value)
      new_head.next_node = @head
      @head = new_head
    end
  end

  def insert(index, value)
    return prepend(value) if index == 0
    @head.insert(index, value)
  end
end
