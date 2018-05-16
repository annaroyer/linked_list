require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require 'pry'

class LinkedListTest < Minitest::Test
  def test_it_has_a_head
    linked_list = LinkedList.new()
    assert_nil linked_list.head
  end

  def test_head_becomes_first_appended_node
    linked_list = LinkedList.new()
    appended = linked_list.append(5)

    assert_equal appended, 5
    assert_instance_of Node, linked_list.head
    assert_equal linked_list.head.data, 5
    assert_nil linked_list.head.next_node
  end

  def test_it_has_a_count
    linked_list = LinkedList.new
    linked_list.append(5)

    assert_equal linked_list.count, 1

    linked_list.append(4)

    assert_equal linked_list.count, 2
  end

  def test_it_can_be_turned_into_a_string
    linked_list = LinkedList.new
    linked_list.append(5)

    assert_equal linked_list.to_s, "5"

    linked_list.append(4)

    assert_equal linked_list.to_s, "54"
  end

  def test_prepend_adds_a_node_to_the_beginning_of_the_list
    linked_list = LinkedList.new
    linked_list.append(5)
    linked_list.append(4)

    linked_list.prepend(3)

    assert_equal 3, linked_list.count
    assert_equal "354", linked_list.to_s
  end

  def test_it_can_insert_a_node
    linked_list = LinkedList.new
    linked_list.append(5)
    linked_list.append(4)
    linked_list.prepend(3)

    assert_equal 8, linked_list.insert(1, 8)
    assert_equal "3854", linked_list.to_s
  end

  # def test_it_can_pop_off_last_node
  #   linked_list = LinkedList.new
  #   linked_list.append(5)
  #   linked_list.append(4)
  #   linked_list.prepend(3)
  #
  #   assert_equal 4, linked_list.pop
  #   assert_equal
  # end
end
