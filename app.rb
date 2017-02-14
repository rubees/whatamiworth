require 'sinatra'
require 'sinatra/reloader'

class WhatAmIWorth < Sinatra::Base

  configure do
    register Sinatra::Reloader
  end

  get '/' do
    # looks for views/index.erb
    erb :index
  end

  post '/' do
    erb :confirmation
  end

  get '/legal-notice' do
    erb :legal_notice
  end

end
