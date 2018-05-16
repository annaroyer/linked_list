require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
  def test_it_has_data
    node = Node.new(5)

    assert_equal node.data, 5
  end

  def test_it_has_a_next_node_that_starts_as_nil
    node = Node.new(5)

    assert_nil node.next_node
  end
end
