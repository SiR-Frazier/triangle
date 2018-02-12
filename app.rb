require('sinatra')
require('sinatra/reloader')
# require('pry')
# require('rscpec')
# require('triangle')

get ('/triangle') do
  @description = "This application will determine what kind of triangle based on user input"
  erb(:input)
end
