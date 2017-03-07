require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require_relative 'models/applicant'

configure :development do
  register Sinatra::Reloader
  set :database, {
      :adapter => 'sqlite3',
      :database =>  'whatamiworth.sqlite3.db'
  }
end

class WhatAmIWorth < Sinatra::Base

  # configure :production do
  #   set :database, {}
  # end

  get '/' do
    # looks for views/index.erb
    erb :index
  end

  post '/confirmation' do
    @email = params["email"]
    @profile_link = params["profile_link"]
    @dev_link = params["dev_link"]
    @main_language = params["main_language"]
    @experience = params["experience"]
    @cities = params["cities"]
    erb :confirmation
  end

  get '/legal-notice' do
    erb :legal_notice
  end

end
