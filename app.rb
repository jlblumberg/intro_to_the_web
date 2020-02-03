require 'sinatra'
require 'shotgun'

set :session_secret, "blah blah blah"

get '/' do
  "hello!"
end

get '/about' do
  "this is my first webapp"
end

get '/author' do
  "Josh Blumberg"
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

