#\ -p 4567
require 'bundler'
Bundler.require

require './app'

configure :production do
  enable :reloader
end

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  %w[javascripts stylesheets].each do |type|
    environment.append_path(
      "#{Compass::Frameworks['bootstrap'].templates_directory}/../vendor/assets/#{type}"
    )
  end
  run environment
end

map '/' do
  run WhatAmIWorth
end
