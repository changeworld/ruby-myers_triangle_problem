class Triangle
  attr_accessor :a, :b, :c

  def is_precondition?
    @a != nil && @b != nil && @c != nil &&
      @a > 0 && @b > 0 && @c > 0
  end

  def is_triangle?
    is_precondition? &&
      @a < @b + @c && @b < @a + @c && @c < @a + @c
  end

  def is_equilteral_triangle?
    is_triangle? &&
      @a == @b && @b == @c && @c == @a
  end

  def is_isoscales_triangle?
    is_triangle? &&
      (@a == @b || @b == @c || @c == @a)
  end

  def is_scalene_triangle?
    is_triangle? &&
      !is_isoscales_triangle?
  end
end
