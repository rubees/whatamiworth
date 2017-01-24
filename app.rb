require 'sinatra'
require 'sinatra/reloader'

configure :production do
  enable :reloader
end

class WhatAmIWorth < Sinatra::Base

  get '/' do
    erb :index
  end

end
