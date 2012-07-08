require 'test/unit'
require 'lib/triangle.rb'

class TestTriangle < Test::Unit::TestCase
  def test_equilteral_triangle
    @triangle = Triangle.new
    @triangle.a = 1
    @triangle.b = 1
    @triangle.c = 1
    assert @triangle.is_equilteral_triangle?, 'should be passed.'
  end
end
