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

get '/cat' do
  erb(:index)
end

