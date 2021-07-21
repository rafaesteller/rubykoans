# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sides_must_add_up_at_least_as_the_hypotenuse(a, b, c)
  sides_cannot_be_zero(a, b, c)
  sides_cannot_be_negative(a, b, c)
  return :equilateral if a == b && b == c
  return :isosceles if (a != b && b == c) || (a != b && a == c) || (a == b && b != c)

  :scalene
end

def sides_cannot_be_zero(a, b, c)
  if(a == 0 || b == 0 || c == 0 )
    raise TriangleError, "Sides cannot be zero"
  end
end

def sides_cannot_be_negative(a, b, c)
  if(a < 0 || b < 0 || c < 0 )
    raise TriangleError, "Sides cannot be negative"
  end
end

def sides_must_add_up_at_least_as_the_hypotenuse(a, b, c)
  x, y, z = [a, b, c].sort
  raise TriangleError if x + y <= z
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
