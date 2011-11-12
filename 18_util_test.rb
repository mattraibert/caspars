require 'minitest/autorun'
require '18_util.rb'

class EighteenUtilTest < MiniTest::Unit::TestCase
  L, R = 'L', 'R'

  def test_optify
    parent = Node.new 3
    child2 = Node.new 2
    child1 = Node.new 1
    parent.optify([child1,child2])
    assert_equal(3, parent.x)
    assert_equal(5, parent.value)
    assert_equal([R], parent.path)
  end

  def test_wrap
    result = Node.wrap([[1,2,3],[1]])
    assert_equal(3, result[0][2].x)
  end

  def test_something
    nodes = Node.wrap([[1,2,3],[4,5],[6]])
    result = enrich([nodes[0], nodes[1]])

    values = result.map {|row| row.map {|x| x.value } }
    assert_equal([[1,2,3],[6,8]], values)

    xs = result.map {|row| row.map {|x| x.x } }
    assert_equal([[1,2,3],[4,5]], xs)

    paths = result.map {|row| row.map {|x| x.path } }
    assert_equal([[[],[],[]],[[R],[R]]], paths)

    #******
    result = enrich([result[1], nodes[2]])

    values = result.map {|row| row.map {|x| x.value } }
    assert_equal([[6,8],[14]], values)

    xs = result.map {|row| row.map {|x| x.x } }
    assert_equal([[4,5],[6]], xs)

    paths = result.map {|row| row.map {|x| x.path } }
    assert_equal([[[R],[R]],[[R,R]]], paths)

  end
end
