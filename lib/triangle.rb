class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind(lengths)
    lengths.each do |a, b, c|
      if a == b && a == c
        :equilateral
      elsif a == b
        :isosceles
      else
        :scalene
      end
    end
  end
end
