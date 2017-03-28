require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

require_relative 'models/applicant'
require_relative 'models/offer'

configure :development do
  set :database, {
        :adapter => 'sqlite3',
        :database =>  'whatamiworth.sqlite3.db'
      }
end

class WhatAmIWorth < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # configure :production do
  #   set :database, {}
  # end

  get '/' do
    # looks for views/index.erb
    erb :index
  end

  post '/confirmation' do
    @applicant = Applicant.new(
      name: params["name"],
      email: params["email"],
      github: params["dev_link"],
      linkedin: params["profile_link"],
      main_language: params["main_language"],
      years_of_experience: params["experience"].to_i,
      cities: params.fetch("cities", []).join(", ")
    )
    if @applicant.valid?
      @applicant.save

      offers = Offer
                 .where("position LIKE ? OR work_languages LIKE ?",
                        "%#{@applicant.main_language}%",
                        "%#{@applicant.main_language}%")
                 .where(:work_experience => @applicant.years_of_experience)

      salary_bottoms = offers.map(&:salary_bottom).compact
      @salary_bottom_avg = salary_bottoms.inject(&:+) / salary_bottoms.count

      salary_tops = offers.map(&:salary_top).compact
      @salary_top_avg = salary_tops.inject(&:+) / salary_tops.count

      erb :confirmation
    else
      erb :index
      # ... show an error message ...
    end
  end

  get '/legal-notice' do
    erb :legal_notice
  end

end
