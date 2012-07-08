class Triangle
  attr_accessor :a, :b, :c

  def is_triangle?
    @a > 0 && @b > 0 && @c > 0
  end

  def is_equilteral_triangle?
    is_triangle? &&
      @a == @b && @b == @c && @c == @a
  end

  def is_isoscales_triangle?
    is_triangle? &&
      (@a == @b || @b == @c || @c == @a)
  end
end
