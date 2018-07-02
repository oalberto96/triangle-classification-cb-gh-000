

class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def intialize(side_a,side_b,side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    :isosceles
  end

  class TriangleError < StandardError
    def message
      ""
    end
  end
end
