require 'sinatra'

class WhatAmIWorth < Sinatra::Base

  get '/' do
    # looks for views/index.erb
    erb :index
  end

  get '/legal-notice' do
    erb :legal_notice
  end

end
