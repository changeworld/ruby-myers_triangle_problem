class Triangle
  attr_accessor :a, :b, :c

  def is_equilteral_triangle?
    @a > 0 && @b > 0 && @c > 0 &&
      @a == @b && @b == @c && @c == @a
  end

  def is_isoscales_triangle?
    @a > 0 && @b > 0 && @c > 0 &&
      (@a == @b || @b == @c || @c == @a)
  end
end
