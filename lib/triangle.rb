

class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a,side_b,side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if side_a * 3 == side_a + side_b + side_c
      return :equilateral
    elsif side_a == side_b && side_c == side_a || side_c == side_a && side_c == side_b
      return :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      ""
    end
  end
end
