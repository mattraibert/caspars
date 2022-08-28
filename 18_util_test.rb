require './test_helper'
require './18_util.rb'

class EighteenUtilTest < Minitest::Test
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

  def test_triangle
    result = Triangle.new([[1,2,3],[4,5],[6]])

    values = result.triangle.map {|row| row.map {|x| x.value } }
    assert_equal([[1,2,3],[6,8],[14]], values)

    xs = result.triangle.map {|row| row.map {|x| x.x } }
    assert_equal([[1,2,3],[4,5], [6]], xs)

    paths = result.triangle.map {|row| row.map {|x| x.path } }
    assert_equal([[[],[],[]],[[R],[R]],[[R, R]]], paths)
  end
end
