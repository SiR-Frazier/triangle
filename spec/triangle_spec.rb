require('triangle')
require('pry')
require('rspec')

describe('#triangle_checker') do
  it ("if all sides are equal return 'This is an equilateral triangle'") do
    triangle = Triangle.new(2, 2, 2)
    expect(triangle.triangle_checker()).to(eq("This is an equilateral triangle"))
  end
  it ("if two sides are equal return 'This is an isosceles triangle'") do
    triangle = Triangle.new(2, 2, 3)
    expect(triangle.triangle_checker()).to(eq("This is an isosceles triangle"))
  end
  it ("if no sides are equal return 'This is an scalene triangle'") do
    triangle = Triangle.new(2, 3, 4)
    expect(triangle.triangle_checker()).to(eq("This is an scalene triangle"))
  end
  it ("if two sides are less than the third side return 'This is not a triangle'") do
    triangle = Triangle.new(10, 1, 1)
    expect(triangle.triangle_checker()).to(eq("This is not a triangle"))
  end

end
