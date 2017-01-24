require 'sinatra'

class WhatAmIWorth < Sinatra::Base

  get '/' do
    erb :index
  end

end
