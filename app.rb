require 'sinatra'
require 'sinatra/reloader'

configure :production do
  enable :reloader
end

get '/' do
  erb :index
end
