#\ -p 4567
require './app'
require 'sprockets'

require 'sinatra/reloader'

configure :production do
  enable :reloader
end

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  run environment
end

map '/' do
  run WhatAmIWorth
end
