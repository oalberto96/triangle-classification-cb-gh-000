require 'pry'

class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a,side_b,side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def greater_than_zero?
    @side_a > 0 && @side_b > 0 && @side_c > 0
  end

  def fulfill_inequality_theorem?
    if @side_a == 1 && @side_b == 1 && @side_c == 3
      binding.pry
    end
    (@side_a + @side_b) > @side_c  && (@side_a + @side_c) > @side_b && (@side_b + @side_c) > @side_a
  end

  def kind
    if self.greater_than_zero? == false || self.fulfill_inequality_theorem? == false
      raise TriangleError
    else
      if side_a * 3 == side_a + side_b + side_c
        return :equilateral
      elsif side_a != side_b && side_a != side_c && side_b != side_c
        return :scalene
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
