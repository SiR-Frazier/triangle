require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')

  get ('/') do
    @description = "This application will determine what kind of triangle based on user input"
    erb(:input)
  end

  get('/output') do
    @side1 = params.fetch("side1").to_i
    @side2 = params.fetch("side2").to_i
    @side3 = params.fetch("side3").to_i
    triangle = Triangle.new(@side1, @side2, @side3)
    @string_to_display = triangle.triangle_checker
    erb(:output)
  end
