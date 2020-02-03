require 'sinatra'
require 'shotgun'

set :session_secret, "blah blah blah"

get '/' do
  "hello!"
end

get '/secret' do
  "this is my secret message"
end

get '/about' do
  "this is my first webapp"
end

get '/author' do
  "Josh Blumberg"
end

get '/cat' do
  "<div>
    <img src='http://bit.ly/1eze8aE'>
  </div>"
end



