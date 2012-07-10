class Triangle
  attr_accessor :a, :b, :c

  def not_nil?
    !(@a.nil? || @b.nil? || @c.nil?)
  end

  def is_precondition?
    not_nil? &&
      @a > 0 && @b > 0 && @c > 0
  end

  def is_triangle?
    is_precondition? &&
      @a < @b + @c && @b < @a + @c && @c < @a + @b
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
