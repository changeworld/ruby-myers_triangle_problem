require 'test/unit'
require 'lib/triangle.rb'

class TestTriangle < Test::Unit::TestCase
  def test_equilteral_triangle
    @triangle = Triangle.new
    @triangle.a = 1
    @triangle.b = 1
    @triangle.c = 1
    assert @triangle.is_equilteral_triangle?, 'should be passed.'
    assert @triangle.is_isoscales_triangle?, 'should be passed.'
  end

  def test_not_triangle_0_0_0
    @triangle = Triangle.new
    @triangle.a = 0
    @triangle.b = 0
    @triangle.c = 0
    assert !@triangle.is_equilteral_triangle?, 'not triangle!'
    assert !@triangle.is_isoscales_triangle?, 'not triangle!'
  end

  def test_is_isoscales_triangle
    @triangle = Triangle.new
    @triangle.a = 1
    @triangle.b = 2
    @triangle.c = 2
    assert !@triangle.is_equilteral_triangle?, 'not equilteral triangle!'
    assert @triangle.is_isoscales_triangle?, 'should be passed.'
  end

  def test_is_triangle
    @triangle = Triangle.new
    @triangle.a = nil
    @triangle.b = 1
    @triangle.c = 1
    assert !@triangle.is_triangle?, 'not triangle!'
  end
end