require 'sinatra'

class WhatAmIWorth < Sinatra::Base

  get '/' do
    # looks for views/index.erb
    erb :index
  end

end
