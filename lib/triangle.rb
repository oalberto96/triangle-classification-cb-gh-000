

class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a,side_b,side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if side_a == side_b && side_a == side_c
      if side_b == side_c
        return :equilateral
      else
        return :isosceles
      end
    end
  end

  class TriangleError < StandardError
    def message
      ""
    end
  end
end
