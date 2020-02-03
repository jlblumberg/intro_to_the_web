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

post '/named-cat' do
  @name = params[:name]
  erb(:index)
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

