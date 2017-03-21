require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require './app'

require 'csv'

desc "Import offers from CSV to the database"
task :import_offers do

  count = 0
  CSV.open('whatamiworth_data.csv', :headers => true).each do |row|
    Offer.create(row.to_h)
    count += 1
  end
  puts "Imported #{count} offers. There are #{Offer.count} offers in the DB."

end
